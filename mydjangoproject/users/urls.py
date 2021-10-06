from django.contrib import admin
from django.urls import path, include
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('register/', views.register, name='users-register'),
    path('login/', views.login_user, name='users-login')
]
