from django.contrib import admin
from django.urls import path
  
# importing views from views..py
from .views import new_pw_view
  
urlpatterns = [
    path('', new_pw_view, name='new-password'),
]