from rest_framework import serializers

class LSTMSerializer(serializers.Serializer):
    time = serializers.IntegerField()
    value = serializers.FloatField()
