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
print(df.head())


