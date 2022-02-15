'''
    Funcoes principais para a realizacao
    da previsao utilizando LSTM.
'''
from aux_functions import *
from datetime import datetime
import pandas as pd
import json


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
        return onehour_forecast(df, dev_model, var)
    else:
        return subsamples_forecast(df, dev_model, var)


def subsamples_forecast(df, dev_model, var):
    # separar dataframe por horas
    # carregar modelo
    # realizar previsao
    pass


def onehour_forecast(df, dev_model, var):
    pass
