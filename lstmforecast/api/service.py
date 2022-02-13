
'''
    Recebe variavel e retorna
    nome da colecao no MongoDB
'''
def map_var_to_collection(var):

    if var == "temp":
        return "emw_temperature_temperature"
    else:
        return True


'''
    Recebe timestamp em segundos
    e retorna em microssegundos
    para pesquisar em banco
'''
def time_seconds_to_micro(time):
    return True


def format_real_data_to_forecast(data):
    print(data.json())
    return True