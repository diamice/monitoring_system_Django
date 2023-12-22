from django.urls import path

from . import views

app_name = 'base_system'

urlpatterns = [
    path('', views.base_logic_system, name='logic'),
]