from rest_framework import generics, permissions
from rest_framework.response import Response
from rest_framework.authtoken.models import Token
from django.contrib.auth import authenticate, login, get_user_model

from .serializers import UserSerializer

from rest_framework.authentication import TokenAuthentication
from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.permissions import IsAuthenticated
from mainCore.models import CreditRequest


User = get_user_model()


class RegisterView(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = (permissions.AllowAny,)

    def post(self, request, *args):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.save()
        token, _ = Token.objects.get_or_create(user=user)
        return Response({'token': token.key})


class LoginView(generics.GenericAPIView):

    serializer_class = UserSerializer
    permission_classes = (permissions.AllowAny,)

    def post(self, request):
        email = request.data.get('email')
        password = request.data.get('password')
        user = authenticate(request, email=email, password=password)
        if user is not None:
            login(request, user)
            token, _ = Token.objects.get_or_create(user=user)
            return Response({'token': token.key})
        return Response({'error': 'Invalid Credentials'})


@api_view(['GET'])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def get_credit_requests_by_user(request):
    user = User.objects.get(id=request.user.id)
    credit_requests = CreditRequest.objects.filter(borrower_id=user)
    response_data = []
    for request in credit_requests:
        response_data.append({
            'id': request.id,
            'credit_name': request.borrowing_id.credit_name,
            'interest_rate': request.borrowing_id.interest_rate,
            'term': request.borrowing_id.term,
            'date_of_taking': request.date_of_taking,
            'end_date': request.end_date,
            'credit_amount': request.credit_amount
        })
    return Response(response_data)
