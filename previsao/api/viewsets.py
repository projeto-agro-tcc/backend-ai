import datetime

from rest_framework import status
from rest_framework.authentication import TokenAuthentication
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from previsao.api.serializers import PrevisaoSerializer
from previsao.models import Previsao
from pymongo import MongoClient
import datetime

class PrevisaoViewSet(ModelViewSet):


    def list(self, request, *args, **kwargs):
        print(request.data)
        client = MongoClient("mongodb://root:monitoramento@52.67.73.50:27017/admin")  # defaults to port 27017
        db = client.projetoagro
        a = db.monitoramento.find_one({'data': 'data'})
        response = {'message': 'User Created', '_id': str(a['_id'])}
        return Response(response, status=status.HTTP_200_OK)

    def get_data_x_days(self,req_day,n_days):
        try:
            client = MongoClient("mongodb://root:monitoramento@52.67.73.50:27017/admin")  # defaults to port 27017
            mydb = client.projetoagro

            last_day = req_day - datetime.timedelta(days=n_days)
            req_day = req_day + datetime.timedelta(days=1)

            res = mydb.monitoramento.find({"data_atual": {"$gte": last_day, "$lte": req_day}})

            for doc in res:
                print(doc)

        except Exception as e:
            print('Error:',e)


    @action(detail=False, methods=['GET'])
    def get_predict(self, request):
        client = MongoClient("mongodb://root:monitoramento@52.67.73.50:27017/admin")  # defaults to port 27017
        db = client.projetoagro

        # Tratamento da data atual recebida do front-end
        today = datetime.datetime.now()
        req_day = today.strftime("%Y-%m-%d")
        req_day = datetime.datetime.strptime(req_day, "%Y-%m-%d")

        # Realiza GET na API IoT
        self.get_data_x_days(req_day, int(request.GET.get('n_days')))

        # req_day = '2021-12-08 05:15:25'
        # req_day = datetime.strptime(req_day, "%Y-%m-%d %H:%M:%S")
        # prev_obj = {"data_atual": req_day,
        #             "temp_min_(C)": 9
        #             }
        #
        # # Inserindo no banco
        # db.monitoramento.insert_one(prev_obj)






        #self.get_data_x_days(req_day,request.GET.get('last_days'))

        return Response({'message': 'It is working'}, status=status.HTTP_200_OK)
        # get na tua
        #datetime.datetime.strptime(req_day, "%Y-%m-%d") + datetime.timedelta(days=1)
