from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from datetime import date
# models here from 'python manage.py inspectdb'


class Task(models.Model):
	user = models.ForeignKey(
		User, on_delete=models.CASCADE, null=True, blank=True)
	title = models.CharField(max_length=200)
	complete = models.BooleanField(default=False)
	created = models.DateField(auto_now_add=True)
	created = models.DateField()

	def __str__(self):
		return self.title
	
	class Meta:
		ordering = ['complete']

class Animals(models.Model):
    file_name = models.CharField(primary_key=True, max_length=30)
    price = models.IntegerField()
    name = models.CharField(max_length=30)
    level = models.IntegerField()

    class Meta:
        db_table = 'animals'

class MuninnPlayer(models.Model):
    total_points = models.IntegerField(default=0)
    daily_points = models.IntegerField(default=0)
    money = models.IntegerField()
    playerid = models.OneToOneField(User, models.DO_NOTHING, db_column='playerID_id')  # Field name made lowercase.
    last_day_updates = models.DateField()

    class Meta:
        db_table = 'muninn_player'

class MuninnDailyHabits(models.Model):
    id = models.BigAutoField(primary_key=True)
    date = models.DateField()
    master_habit = models.ForeignKey('MuninnMasterHabits', models.DO_NOTHING, db_column='master_habit', related_name='master_id')
    complete = models.BooleanField(default=False)
    user = models.ForeignKey(User, models.DO_NOTHING)
    title = models.CharField(max_length=200)

    class Meta:
        db_table = 'muninn_daily_habits'


class MuninnMasterHabits(models.Model):
    id = models.BigAutoField(primary_key=True)
    created = models.DateField(date.today())
    created = models.DateField()
    user = models.ForeignKey(User, models.DO_NOTHING)
    title = models.CharField(max_length=200)
    active = models.BooleanField(default=True)
    class Meta:
        db_table = 'muninn_master_habits'