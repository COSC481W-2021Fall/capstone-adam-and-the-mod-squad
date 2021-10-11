from django.contrib import admin
from django.urls import path, include
from . import views
from .views import dashboard

urlpatterns = [
    path('', views.home, name='muninn-home'),
    path('dashboard', dashboard.as_view(), name='muninn-dashboard'),
    path('dashboard/', dashboard.as_view(), name='muninn-dashboard'),
]