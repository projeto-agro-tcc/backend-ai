import math
from datetime import datetime
import pandas as pd
import json

t = "[{'_id': {'$oid': '6208297318ebb6db4699f790'}, 'time': 1644700544912182, 'unit': 2224179556, 'value': 298.8, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f79f'}, 'time': 1644700208867377, 'unit': 2224179556, 'value': 298.9, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f7af'}, 'time': 1644699907091804, 'unit': 2224179556, 'value': 299.0, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f7be'}, 'time': 1644699603284944, 'unit': 2224179556, 'value': 299.0, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f7cf'}, 'time': 1644699299148258, 'unit': 2224179556, 'value': 299.1, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f7de'}, 'time': 1644698997884997, 'unit': 2224179556, 'value': 299.2, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f7ef'}, 'time': 1644698692789827, 'unit': 2224179556, 'value': 299.5, 'dev_id': 'f803320100027b40'}, {'_id': {'$oid': '6208297318ebb6db4699f7fe'}, 'time': 1644698389922132, 'unit': 2224179556, 'value': 299.7, 'dev_id': 'f803320100027b40'}]"
t = t.replace("'","\"")

data = json.loads(t)

time_real = []
value_real = []
for d in data:
    time_s = str(d['time'])
    time_real.append(datetime.fromtimestamp(int(time_s[:-6])))
    value_real.append(d['value'])

df = pd.DataFrame(columns=['value'], data=value_real, index=time_real)
df = df.resample('H').mean()

real_data_to_forecast = []

for index, row in df.iterrows():
    item = {"time":str(index),"value":row.value}
    real_data_to_forecast.append(item)

##### JÁ REALIZANDO A PREVISAO

# mapear qual variável utilizar

# criar data set


real_data_to_forecast = json.loads(json.dumps(real_data_to_forecast))
index = [datetime.strptime(t['time'], '%Y-%m-%d %H:%M:%S') for t in real_data_to_forecast]
data = [v['value'] for v in real_data_to_forecast]

df2 = pd.DataFrame(columns=['value'],data=data,index=index)

import datetime
import itertools

# print(str(df2.index[-1]))

def date_generator(start_date):
  while True:
    yield start_date
    start_date = start_date + datetime.timedelta(hours=1)


start = datetime.datetime.strptime(str(df2.index[-1]), '%Y-%m-%d %H:%M:%S')
dates = itertools.islice(date_generator(start), 48)
list_dates = []
[list_dates.append(d) for d in dates]

df3 = pd.DataFrame(columns=['value'],data=[],index=list_dates)

df_r = pd.concat([df2,df3])

print(df_r.head())














