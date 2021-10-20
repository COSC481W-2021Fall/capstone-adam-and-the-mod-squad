from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User

# models here from 'python manage.py inspectdb'


class Task(models.Model):
	user = models.ForeignKey(
		User, on_delete=models.CASCADE, null=True, blank=True)
	title = models.CharField(max_length=200)
	complete = models.BooleanField(default=False)
	created = models.DateTimeField(auto_now_add=True)

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
        managed = False
        db_table = 'animals'