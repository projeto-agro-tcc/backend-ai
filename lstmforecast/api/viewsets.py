from rest_framework import status
from rest_framework.authentication import TokenAuthentication
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from utils.MongoConfig import get_db_handle, get_collection_handle
from backendai.settings import LSTM_FORECAST_COLLECTION, URI_IOT
from lstmforecast.api.service import *
from lstmforecast.utils.forecast import forecast
import datetime
import math
from datetime import timedelta
import requests


class LSTMViewSet(ModelViewSet):

    def list(self, request, *args, **kwargs):
        return Response('API to LSTM forecast', status=status.HTTP_200_OK)

    @action(detail=False, methods=['GET'])
    def get_forecast(self, request, *args, **kwargs):

        db_handle, mongo_client = get_db_handle()
        collection = get_collection_handle(db_handle, LSTM_FORECAST_COLLECTION)

        # Requisicao vinda do CORE
        req_core = request.GET.dict()

        end = req_core["timetoend"]
        dev_id = req_core["dev_id"]
        var = req_core["var"]
        model = req_core["model"]
        type_forecast = req_core["type_forecast"]

        # Data inicio e final dos dados reais dependendo da previsão
        n = 96
        if type_forecast == "onehour":
            n = 24

        start = math.ceil(datetime.datetime.timestamp(datetime.datetime.fromtimestamp(int(end)) - timedelta(hours=n)))

        # Realiza requisição de dados reais na API IOT
        uri = "?timetostart="+str(start)+"000000"+"&timetoend="+str(end)+"000000"+"&dev_id="+dev_id+"&var="+map_var_to_collection(var)
        req_iot = requests.get(URI_IOT+uri)

        # Realiza a formatação dos dados para a previsão
        real_data_format = format_real_data_to_forecast(req_iot)

        # Realiza previsão
        previsao = forecast(real_data_format, type_forecast, model)

        return Response('api ai', status=status.HTTP_200_OK)

    @action(detail=False, methods=['GET'])
    def teste(self, request, *args, **kwargs):
        #print(request.GET.dict())
        return Response('retorno API IOT:'+str(request.GET.dict()), status=status.HTTP_200_OK)
