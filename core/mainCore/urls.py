from django.urls import path
from .views import RegisterView, LoginView, get_credit_requests_by_user

urlpatterns = [
    path('register', RegisterView.as_view(), name='register'),
    path('login', LoginView.as_view(), name='login'),
    path('get_credit_requests', get_credit_requests_by_user)
]