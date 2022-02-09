from django.contrib.auth.models import Group
from rest_framework.serializers import ModelSerializer


# class LSTMSerializer(ModelSerializer):
#
#     class Meta:
#         model = Previsao
#         fields = ('sn_endpoint',)
#         # extra_kwargs = {'password': {'write_only': True, 'required': True}}