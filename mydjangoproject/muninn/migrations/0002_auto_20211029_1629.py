# Generated by Django 3.2.7 on 2021-10-29 20:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('muninn', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='muninnmasterhabits',
            name='active',
            field=models.BooleanField(default=True),
        ),
        migrations.AlterField(
            model_name='task',
            name='created',
            field=models.DateField(),
        ),
    ]
