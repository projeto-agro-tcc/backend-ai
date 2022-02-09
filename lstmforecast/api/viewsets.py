from rest_framework import status
from rest_framework.authentication import TokenAuthentication
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from utils.MongoConfig import get_db_handle, get_collection_handle
from backendai.settings import LSTM_FORECAST_COLLECTION
import datetime


class LSTMViewSet(ModelViewSet):

    def list(self, request, *args, **kwargs):
        return Response('teste list', status=status.HTTP_200_OK)

    @action(detail=False, methods=['GET'])
    def get_forecast_lstm(self, request, *args, **kwargs):
        db_handle, mongo_client = get_db_handle()
        collection = get_collection_handle(db_handle, LSTM_FORECAST_COLLECTION)
        # collection.insert_one(request.GET.dict())
        print('teste')
        return Response('teste', status=status.HTTP_200_OK)
