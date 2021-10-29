# Generated by Django 3.2.7 on 2021-10-29 16:29

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Animals',
            fields=[
                ('file_name', models.CharField(max_length=30, primary_key=True, serialize=False)),
                ('price', models.IntegerField()),
                ('name', models.CharField(max_length=30)),
                ('level', models.IntegerField()),
            ],
            options={
                'db_table': 'animals',
            },
        ),
        migrations.CreateModel(
            name='Task',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200)),
                ('complete', models.BooleanField(default=False)),
                ('created', models.DateField(auto_now_add=True)),
                ('user', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'ordering': ['complete'],
            },
        ),
        migrations.CreateModel(
            name='MuninnPlayer',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('total_points', models.IntegerField(default=0)),
                ('daily_points', models.IntegerField(default=0)),
                ('money', models.IntegerField()),
                ('last_day_updates', models.DateField()),
                ('playerid', models.OneToOneField(db_column='playerID_id', on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'muninn_player',
            },
        ),
        migrations.CreateModel(
            name='MuninnMasterHabits',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('created', models.DateField()),
                ('title', models.CharField(max_length=200)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'muninn_master_habits',
            },
        ),
        migrations.CreateModel(
            name='MuninnDailyHabits',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('date', models.DateField()),
                ('complete', models.BooleanField(default=False)),
                ('title', models.CharField(max_length=200)),
                ('master_habit', models.ForeignKey(db_column='master_habit', on_delete=django.db.models.deletion.DO_NOTHING, related_name='master_id', to='muninn.muninnmasterhabits')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'muninn_daily_habits',
            },
        ),
    ]
