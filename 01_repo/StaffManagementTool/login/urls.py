from django.contrib import admin
from django.urls import path
  
# importing views from views..py
from .views import login_view
  
urlpatterns = [
    path('', login_view, name='login'),
]