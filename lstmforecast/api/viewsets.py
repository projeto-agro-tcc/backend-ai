import json
from rest_framework import status
from rest_framework.authentication import TokenAuthentication
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from utils.MongoConfig import get_db_handle, get_collection_handle
from backendai.enviroments import API_IOT
from lstmforecast.api.LSTMservice import LSTMservice
from lstmforecast.utils.LSTMforecast import LSTMforecast
from lstmforecast.api.serializers import LSTMSerializer
import datetime
import math
from datetime import timedelta
import requests
from requests.adapters import HTTPAdapter
from requests.packages.urllib3.util.retry import Retry


class LSTMViewSet(ModelViewSet):

    def list(self, request, *args, **kwargs):
        return Response('API to LSTM forecast', status=status.HTTP_200_OK)

    @action(detail=False, methods=['GET'])
    def get_forecast(self, request, *args, **kwargs):

        #db_handle, mongo_client = get_db_handle()
        #collection = get_collection_handle(db_handle, LSTM_FORECAST_COLLECTION)

        session = requests.Session()
        retry = Retry(connect=3, backoff_factor=0.5)
        adapter = HTTPAdapter(max_retries=retry)
        session.mount('http://', adapter)
        session.mount('https://', adapter)

        # Requisicao vinda do CORE
        req_core = request.GET.dict()

        end = req_core["timetoend"]
        dev_id = req_core["dev_id"]
        var = req_core["var"]
        model = req_core["model"]
        type_forecast = req_core["typeforecast"]

        # Data inicio e final dos dados reais dependendo da previsão
        n = 96
        if type_forecast == "onehour":
            n = 24

        start = math.ceil(datetime.datetime.timestamp(datetime.datetime.fromtimestamp(int(end)) - timedelta(hours=n)))

        # Realiza requisição de dados reais na API IOT
        lstm_service = LSTMservice()
        start = str(start) + "000000"
        end = str(end) + "000000"
        uri = "?timetostart="+start+"&timetoend="+end+"&dev_id="+dev_id+"&var="+var
        req_iot = session.get(API_IOT+uri)

        req_iot_str = str(req_iot.json())
        req_iot_str = req_iot_str.replace("\'", "\"")

        # Realiza a formatação dos dados para a previsão
        real_data_format = lstm_service.format_real_data_to_forecast(req_iot_str, var)

        # Realiza previsão
        lstm_forecast = LSTMforecast()
        previsao = lstm_forecast.forecast(real_data_format, type_forecast, model, var)

        return Response(previsao, status=status.HTTP_200_OK)


