from django.urls import path
from .views import calculate_model


urlpatterns = [
    path('calculate_model/', calculate_model),
]