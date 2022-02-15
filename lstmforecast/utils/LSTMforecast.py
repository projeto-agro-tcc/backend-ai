'''
    Funcoes principais para a realizacao
    da previsao utilizando LSTM.
'''
from lstmforecast.utils.LSTMfunctions import LSTMfunctions
from datetime import datetime
import pandas as pd
import json
from tensorflow import keras
from keras.models import Sequential, load_model

class LSTMforecast:

    def __init__(self):
        pass

    '''
        Funcao global chamada por
        outras classes.
    '''
    def forecast(data_db, type, dev_model, var):
        data = json.loads(json.dumps(data_db))
        index = [datetime.strptime(t['time'], '%Y-%m-%d %H:%M:%S') for t in data]
        data = [v['value'] for v in data]

        df = pd.DataFrame(columns=['value'], data=data, index=index)

        if type == "onehour":
            return LSTMfunctions.onehour_forecast(df, dev_model, var)
        else:
            return LSTMfunctions.subsamples_forecast(df, dev_model, var)


    '''
        Previsao utilizando a estratagia
        de horas subamostradas.
    '''
    def subsamples_forecast(df, dev_model, var):
        df1, df2, df3, df4 = LSTMfunctions.df_per_subsamples(df)
        path_model = ''

        train_set1, test_set1, min_value1, max_value1, model1 = LSTMfunctions.my_load_model(path_model + dev_model + '_modelo1_' + var + '_24')
        train_set2, test_set2, min_value2, max_value2, model2 = LSTMfunctions.my_load_model(path_model + dev_model + '_modelo2_' + var + '_24')
        train_set3, test_set3, min_value3, max_value3, model3 = LSTMfunctions.my_load_model(path_model + dev_model + '_modelo3_' + var + '_24')
        train_set4, test_set4, min_value4, max_value4, model4 = LSTMfunctions.my_load_model(path_model + dev_model + '_modelo4_' + var + '_24')

        p1 = LSTMfunctions.make_predict_dois_dias('value', df1, 12, 24, model1)
        p2 = LSTMfunctions.make_predict_dois_dias('value', df2, 12, 24, model2)
        p3 = LSTMfunctions.make_predict_dois_dias('value', df3, 12, 24, model3)
        p4 = LSTMfunctions.make_predict_dois_dias('value', df4, 12, 24, model4)

        previsao = []

        for i in range(len(p1)):
            previsao.append(p1[i] * (max_value1 - min_value1) + min_value1)
            previsao.append(p2[i] * (max_value2 - min_value2) + min_value2)
            previsao.append(p3[i] * (max_value3 - min_value3) + min_value3)
            previsao.append(p4[i] * (max_value4 - min_value4) + min_value4)

        return 0


    def onehour_forecast(df, dev_model, var):
        pass
