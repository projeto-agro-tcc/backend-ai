from django.db import models

# Create your models here.
class Previsao(models.Model):
    id = models.AutoField(primary_key=True)
    sn_endpoint = models.CharField(max_length=500)
