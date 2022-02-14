import json

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

    t = "[{'_id': {'$oid': '6208297318ebb6db4699f790'}, 'time': 1644700544912182, 'unit': 2224179556, 'value': 298.8, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f79f'}, 'time': 1644700208867377, 'unit': 2224179556, 'value': 298.9, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f7af'}, 'time': 1644699907091804, 'unit': 2224179556, 'value': 299.0, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f7be'}, 'time': 1644699603284944, 'unit': 2224179556, 'value': 299.0, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f7cf'}, 'time': 1644699299148258, 'unit': 2224179556, 'value': 299.1, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f7de'}, 'time': 1644698997884997, 'unit': 2224179556, 'value': 299.2, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f7ef'}, 'time': 1644698692789827, 'unit': 2224179556, 'value': 299.5, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f7fe'}, 'time': 1644698389922132, 'unit': 2224179556, 'value': 299.7, 'dev_id': 'f803320100027b40'}]"

    data = json.loads(data.json())

    print(type(data))
    print(data)

    return True