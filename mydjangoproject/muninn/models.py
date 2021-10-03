from django.db import models
from django.contrib.auth.models import User
from django.urls import reverse


class userV2(models.Model):

    # Fields
    username = models.TextField(max_length=20)
    password = models.TextField(max_length=100)
    first_name = models.TextField(max_length=100)

    class Meta:
        pass

    def str(self):
        return str(self.pk)

    def get_absolute_url(self):
        return reverse("muninn_user_detail", args=(self.pk,))

    def get_update_url(self):
        return reverse("muninn_user_update", args=(self.pk,))