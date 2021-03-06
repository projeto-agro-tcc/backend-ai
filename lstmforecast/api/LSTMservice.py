'''
    Algumas funcoes para a aquisicao
    e formatacao dos dandos oriundos
    do banco MongoDB
'''

from datetime import datetime
import pandas as pd
import json


class LSTMservice:

    def __init__(self):
        pass

    '''
        Realiza a formatacao dos dados vindos do banco
        para o formato [{"time":123456789,"value":25}, ... ]
    '''
    def format_real_data_to_forecast(self, data_db, var):

        data = json.loads(data_db)

        time_real = []
        value_real = []
        for d in data:
            time_s = str(d['time'])
            time_real.append(datetime.fromtimestamp(int(time_s[:-6])))

            if var == 'temp':
                value_real.append(d['value']-273.15)
            else:
                value_real.append(d['value'])

        df = pd.DataFrame(columns=['value'], data=value_real, index=time_real)
        df = df.resample('H').mean()

        real_data_to_forecast = []

        for index, row in df.iterrows():
            item = {"time": str(index), "value": row.value}
            real_data_to_forecast.append(item)

        return real_data_to_forecast

