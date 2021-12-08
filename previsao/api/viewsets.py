from rest_framework import status
from rest_framework.authentication import TokenAuthentication
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from previsao.api.serializers import PrevisaoSerializer
from previsao.models import Previsao
from pymongo import MongoClient

class PrevisaoViewSet(ModelViewSet):


    def list(self, request, *args, **kwargs):
        print(request.data)
        client = MongoClient("mongodb://root:monitoramento@52.67.73.50:27017/admin")  # defaults to port 27017
        db = client.projetoagro
        a = db.monitoramento.find_one({'data': 'data'})
        response = {'message': 'User Created', '_id': str(a['_id'])}
        return Response(response, status=status.HTTP_200_OK)


    @action(detail=False, methods=['GET'])
    def get_predict(self, request):
        print(request.GET.get('sn_est'))
        response = {'message': 'It is working'}
        return Response(response, status=status.HTTP_200_OK)
        # get na tua