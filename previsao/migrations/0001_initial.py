# Generated by Django 4.0 on 2021-12-08 00:22

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Previsao',
            fields=[
                ('_id', models.AutoField(primary_key=True, serialize=False)),
                ('sn_endpoint', models.CharField(max_length=500)),
            ],
        ),
    ]
