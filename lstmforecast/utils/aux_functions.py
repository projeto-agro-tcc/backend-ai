'''
    Funcoes diversas para a manipulacao
    e previsao dos dados utilizando LSTM
'''
import pandas as pd
import numpy as np


''' Cria os datasets baseado no valor de n_in '''
def dataframe_to_Xy(df, n_in):
    df_np = df
    X, y = [], []
    for i in range(len(df) - n_in):
        X.append([[a] for a in df_np[i:i + n_in]])
        y.append(df_np[i + n_in])
    return np.array(X), np.array(y)



'''
    Formatacao dos dados que serao utilizados
    na previsao [[a,b,c],[d,e,f]] -> [[[[a],[b],[c]]],[[[d],[e],[f]]]] -> 
    format[0] = [[[a],[b],[c]]]
'''
def format_data(data):
    format = []
    for d in data:
        format.append([[[a] for a in d]])

    return format


'''
    Atualiza vetor de dados para previsao
    com base no ultimo valor previsto.
    data = [[[a],[b],[c],[d],[e]]]
    new_data = [f]
    result = [[[b],[c],[d],[e],[f]]]
'''
def new_data(data, new_data):
    new_array_data = []
    new_array_data_shift = []
    l1 = data[0]

    for i in range(len(l1)):
        a = l1[i]
        new_array_data.append(a[0])

    for i in range(len(new_array_data) - 1):
        new_array_data_shift.append(new_array_data[i + 1])

    new_array_data_shift.append(new_data[-1])

    res = format_data([new_array_data_shift])

    return res[0]


''' Carrega modelo '''
def load_model(path):
    try:
        model = keras.models.load_model(path)
        train_set = pd.read_csv(path + '/train_set.csv', index_col='Data', parse_dates=True, low_memory=False)
        test_set = pd.read_csv(path + '/test_set.csv', index_col='Data', parse_dates=True, low_memory=False)
        norm = pd.read_csv(path + '/norm.csv')
        min_value = norm['min_value'].values[0]
        max_value = norm['max_value'].values[0]
        return train_set, test_set, min_value, max_value, model
    except Exception as e:
        print('> Erro ao carregar modelo!')
        return 0


''' 
    Previsao Dois Dias

    col: variavel em analise
    data: dataframe completo
    n: amostras a serem previstas
    m: amostras necessarias para o modelo
    model: modelo treinado

    retorna uma lista com n amostras previstas. Para
    esta aplicacao n sera sempre igual a 12. Ou seja,
    cada modelo retornará 12 amostra, ou a previsao
    para 2 dias.

'''
def make_predict_dois_dias(col, data, n, m, model):
    # Lista de m valores reais
    train_data = data[col][-m:].values

    # Formatando dados
    r = format_data([train_data])
    data_formatted = r[0]

    forecast = []
    list_prev = []

    for j in range(n):
        if len(list_prev) == 0:
            value = model.predict(data_formatted)
            value = value[0, 0].item()
            list_prev.append(value)
        else:
            data_formatted = new_data(data_formatted, list_prev)
            value = model.predict(data_formatted)
            value = value[0, 0].item()
            list_prev.append(value)

    forecast.append(list_prev)

    return forecast


''' 
  Previsao Proxima Hora 

  col: variavel em analise
  data: dataframe completo
  n: amostras a serem previstas
  m: amostras necessarias para o modelo
  model: modelo treinado

'''
def make_predict_proxima_hora(col, data, n, m, model):
    forecast = []
    list_prev = []

    # Formatando dados
    r = format_data([data[:m]])
    data_formatted = r[0]

    for j in range(n):
        if len(list_prev) == 0:
            value = model.predict(data_formatted)
            value = value[0, 0].item()
            list_prev.append(value)
        else:
            data_formatted = new_data(data_formatted, [data[m + j]])
            value = model.predict(data_formatted)
            value = value[0, 0].item()
            list_prev.append(value)

    # Armazenando as 24 primeiras amostras
    t = data[:m]
    for i in reversed(t):
        list_prev.insert(0, i)

    forecast.append(list_prev)

    return forecast


'''
    Separa o dataframe utilizado 
    para o treinamento no conjunto
    de horas especifico para a estrategia
    de subamostras do dia
'''
def df_per_subsamples():
    pass