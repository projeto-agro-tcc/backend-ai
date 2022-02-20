'''
    Funcoes principais para a realizacao
    da previsao utilizando LSTM.
'''
from lstmforecast.utils.LSTMfunctions import LSTMfunctions
from datetime import datetime
import pandas as pd
import json
import itertools


class LSTMforecast:

    def __init__(self):
        pass

    '''
        Previsao utilizando a estratagia
        de horas subamostradas.
    '''
    def subsamples_forecast(self, df, dev_model, var):

        lstm_functions = LSTMfunctions()

        df1, df2, df3, df4 = lstm_functions.df_per_subsamples(df)

        list_df = [df1, df2, df3, df4]
        for i in range(len(list_df)):
            if len(list_df[i]) > 24:
                list_df[i].drop(list_df[i].tail(len(list_df[i])-24).index, inplace=True)
            if len(list_df[i]) < 24:
                start = datetime.strptime(str(list_df[i].index[-1]), '%Y-%m-%d %H:%M:%S')
                dates = itertools.islice(lstm_functions.create_future_dates(start, 4), 24-len(list_df[i]))
                list_dates = []
                [list_dates.append(d) for d in dates]

                df_future_dates = pd.DataFrame(columns=['value'], data=list_df[i].tail(24-len(list_df[i])), index=list_dates)
                df_result = pd.concat([list_df[i], df_future_dates])
                list_df[i] = df_result

        df1 = list_df[0]
        df2 = list_df[1]
        df3 = list_df[2]
        df4 = list_df[3]

        path_model = '/home/marcelo/Documents/git/backend-ai/lstmforecast/utils/models/subamostras/'

        train_set1, test_set1, min_value1, max_value1, model1 = lstm_functions.my_load_model(path_model + dev_model + '_modelo1_' + var + '_24')
        train_set2, test_set2, min_value2, max_value2, model2 = lstm_functions.my_load_model(path_model + dev_model + '_modelo2_' + var + '_24')
        train_set3, test_set3, min_value3, max_value3, model3 = lstm_functions.my_load_model(path_model + dev_model + '_modelo3_' + var + '_24')
        train_set4, test_set4, min_value4, max_value4, model4 = lstm_functions.my_load_model(path_model + dev_model + '_modelo4_' + var + '_24')

        df1['value'] = (df1['value'] - min_value1) / (max_value1 - min_value1)
        df2['value'] = (df2['value'] - min_value2) / (max_value2 - min_value2)
        df3['value'] = (df3['value'] - min_value3) / (max_value3 - min_value3)
        df4['value'] = (df4['value'] - min_value4) / (max_value4 - min_value4)

        p1 = lstm_functions.make_predict_dois_dias('value', df1[:24], 12, 24, model1)
        p2 = lstm_functions.make_predict_dois_dias('value', df2[:24], 12, 24, model2)
        p3 = lstm_functions.make_predict_dois_dias('value', df3[:24], 12, 24, model3)
        p4 = lstm_functions.make_predict_dois_dias('value', df4[:24], 12, 24, model4)

        previsao = []

        for i in range(len(p3[0])):
            previsao.append(p1[0][i] * (max_value1 - min_value1) + min_value1)
            previsao.append(p2[0][i] * (max_value2 - min_value2) + min_value2)
            previsao.append(p3[0][i] * (max_value3 - min_value3) + min_value3)
            previsao.append(p4[0][i] * (max_value4 - min_value4) + min_value4)

        start = datetime.strptime(str(df.index[-1]), '%Y-%m-%d %H:%M:%S')
        dates = itertools.islice(lstm_functions.create_future_dates(start, 4), 48)
        list_dates = []
        [list_dates.append(d) for d in dates]

        df_future_dates = pd.DataFrame(columns=['value'], data=previsao, index=list_dates)
        df_result = pd.concat([df, df_future_dates])
        df_result = df_result.resample('H').mean()

        real_data_and_forecast = []

        for index, row in df_result.iterrows():
            item = {"time": str(index), "value": row.value}
            real_data_and_forecast.append(item)

        return real_data_and_forecast

    def onehour_forecast(self, df, dev_model, var):
        pass


    '''
        Funcao global chamada por
        outras classes.
    '''
    def forecast(self, data_db, type, dev_model, var):
        data = json.loads(json.dumps(data_db))
        index = [datetime.strptime(t['time'], '%Y-%m-%d %H:%M:%S') for t in data]
        data = [v['value'] for v in data]

        df = pd.DataFrame(columns=['value'], data=data, index=index)

        if type == "onehour":
            return self.onehour_forecast(df, dev_model, var)
        else:
            return self.subsamples_forecast(df, dev_model, var)
