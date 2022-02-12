from rest_framework import status
from rest_framework.authentication import TokenAuthentication
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from utils.MongoConfig import get_db_handle, get_collection_handle
from backendai.settings import LSTM_FORECAST_COLLECTION
from lstmforecast.utils.forecast import forecast
import datetime
import math
from datetime import timedelta


class LSTMViewSet(ModelViewSet):

    def list(self, request, *args, **kwargs):
        return Response('API to LSTM forecast', status=status.HTTP_200_OK)

    @action(detail=False, methods=['GET'])
    def get_forecast(self, request, *args, **kwargs):

        db_handle, mongo_client = get_db_handle()
        collection = get_collection_handle(db_handle, LSTM_FORECAST_COLLECTION)

        n = 24
        start = 1644594732
        end = math.ceil(datetime.datetime.timestamp(datetime.datetime.fromtimestamp(start) - timedelta(hours=n)))

        # req = request.GET.dict()
        # print(req['dev_model'])

        # f = forecast(request.GET.dict())
        # collection.insert_one(request.GET.dict())
        return Response(str(start)+"-"+str(end), status=status.HTTP_200_OK)

    @action(detail=False, methods=['GET'])
    def teste(self, request, *args, **kwargs):
        print(request.GET.dict())
        return Response('retorno API IOT', status=status.HTTP_200_OK)
