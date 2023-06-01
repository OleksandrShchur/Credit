from django.urls import path
from .views import RegisterView, LoginView, get_credit_requests_by_user, \
    credit_request_detail, credit_request_create, user_detail, json_reimbursement_scheme_detail, \
    json_reimbursement_scheme_list

urlpatterns = [
    path('register', RegisterView.as_view(), name='register'),
    path('login', LoginView.as_view(), name='login'),
    path('all_credit_requests', get_credit_requests_by_user, name='all-credit-requests'),
    path('credit_request/<int:pk>/', credit_request_detail, name='credit-request-detail'),
    path('credit_request/create/', credit_request_create, name='credit-request-create'),
    path('user_detail/', user_detail, name='user-detail'),
    path('json_reimbursement_schemes/', json_reimbursement_scheme_list, name='json-reimbursement-scheme-list'),
    path('json_reimbursement_scheme/<int:pk>/', json_reimbursement_scheme_detail,
         name='json-reimbursement-scheme-detail'),

]