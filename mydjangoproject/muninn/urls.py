from django.contrib import admin
from django.urls import path, include
from . import views
from .views import dashboard, petshop

urlpatterns = [
    path('', views.home, name='muninn-home'),
    path('home', views.home, name='muninn-home'),
    path('dashboard', dashboard.as_view(), name='muninn-dashboard'),
    path('pet-shop', petshop.as_view(), name='muninn-pet-shop'),
    path('roost', views.roost, name='muninn-roost'),
    path('about', views.about, name='muninn-about'),
    path('user-settings', views.usersettings, name='muninn-user-settings'),
    path('statistics', views.statistics, name='muninn-statistics'),
    path('api/statistics-data', views.statisticsData, name='statistics_data'),
    path('faq', views.faq, name='muninn-faq'),
    
    path('dashboard/', dashboard.as_view(), name='muninn-dashboard'),
    path('pet-shop/', petshop.as_view(), name='muninn-pet-shop'),
    path('roost/', views.roost, name='muninn-roost'),
    path('about/', views.about, name='muninn-about'),
    path('user-settings/', views.usersettings, name='muninn-user-settings'),
    path('friends/', views.friends, name='muninn-friends'),
    path('statistics/', views.statistics, name='muninn-statistics'),
    path('pet-shop/', petshop.as_view(), name='muninn-pet-shop'),
    path('api/statistics-data/', views.statisticsData, name='statistics_data'),
]