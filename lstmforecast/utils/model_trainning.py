''' Gera o modelo de Dois Dias'''
def model_generator_dois_dias(df, col, lt, m):
    model = Sequential()

    # Normalizacao
    max_value = df[col].max()
    min_value = df[col].min()
    df[col] = (df[col] - min_value) / (max_value - min_value)

    # Dataset de treino e teste
    index_test = math.ceil(len(df.index) * lt)
    train_set = df[:-48]
    test_set = df[-48:]

    # Criando datasets de treino e teste de acordo com o valor de h (num. amostras para previsao)
    train_X, train_y = dataframe_to_Xy(train_set[col], m);
    test_X, test_y = dataframe_to_Xy(test_set[col], m);

    # Treinando modelo
    model.add(LSTM(units=64, input_shape=(m, 1), activation="relu", recurrent_activation="sigmoid"))
    model.add(Dense(1))
    model.compile(loss='mean_squared_error', optimizer='adam')
    historico = model.fit(train_X, train_y, epochs=3, batch_size=1, verbose=1)

    return train_set, test_set, min_value, max_value, model


''' Gera o modelo de Proxima Hora'''
def model_generator_proxima_hora(df, col, lt, m):
    model = Sequential()

    # Normalizacao
    max_value = df[col].max()
    min_value = df[col].min()
    df[col] = (df[col] - min_value) / (max_value - min_value)

    # Dataset de treino e teste
    index_test = math.ceil(len(df.index) * lt)
    train_set = df[:-index_test]
    test_set = df[-index_test:]

    # Criando datasets de treino e teste de acordo com o valor de h (num. amostras para previsao)
    train_X, train_y = dataframe_to_Xy(train_set[col], m);
    test_X, test_y = dataframe_to_Xy(test_set[col], m);

    # Treinando modelo
    model.add(LSTM(units=64, input_shape=(m, 1), activation="relu", recurrent_activation="sigmoid"))
    model.add(Dense(1))
    model.compile(loss='mean_squared_error', optimizer='adam')
    history = model.fit(train_X, train_y, epochs=3, batch_size=1, verbose=1)

    return train_set, test_set, min_value, max_value, model