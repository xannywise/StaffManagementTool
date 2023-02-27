from django.contrib import admin
from django.urls import path
  
# importing views from views..py
from .views import overview_view
  
urlpatterns = [
    path('', overview_view, name='home'),
]