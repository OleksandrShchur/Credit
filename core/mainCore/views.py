from rest_framework import generics, permissions
from rest_framework.response import Response
from rest_framework.authtoken.models import Token
from django.contrib.auth import authenticate, login, get_user_model

from .serializers import UserSerializer

from rest_framework.authentication import TokenAuthentication
from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.permissions import IsAuthenticated
from mainCore.models import CreditRequest, JsonReimbursementScheme

from rest_framework import status
from .serializers import CreditRequestSerializer, BorrowingSerializer
from .serializers import JsonReimbursementSchemeSerializer


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


@api_view(['GET', 'PUT', 'DELETE'])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def credit_request_detail(request, pk):
    try:
        credit_request = CreditRequest.objects.get(pk=pk)
    except CreditRequest.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = CreditRequestSerializer(credit_request)
        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = CreditRequestSerializer(credit_request, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'DELETE':
        credit_request.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)


@api_view(['POST'])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def credit_request_create(request):
    borrowing_data = request.data.get('borrowing')
    borrowing_serializer = BorrowingSerializer(data=borrowing_data)
    if borrowing_serializer.is_valid():
        borrowing = borrowing_serializer.save()
        credit_request_data = request.data.copy()
        del credit_request_data['borrowing']
        credit_request_data['borrowing_id'] = borrowing.id
        credit_request_data['borrower_id'] = request.user.id
        credit_request_serializer = CreditRequestSerializer(data=credit_request_data)
        if credit_request_serializer.is_valid():
            credit_request_serializer.save()
            return Response(credit_request_serializer.data, status=status.HTTP_201_CREATED)
    return Response({'message': 'Invalid data'}, status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET'])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def user_detail(request):
    user = User.objects.get(id=request.user.id)
    serializer = UserSerializer(user)
    return Response(serializer.data)


@api_view(['GET', 'POST'])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def json_reimbursement_scheme_list(request):
    if request.method == 'GET':
        schemes = JsonReimbursementScheme.objects.all()
        serializer = JsonReimbursementSchemeSerializer(schemes, many=True)
        return Response(serializer.data)
    elif request.method == 'POST':
        serializer = JsonReimbursementSchemeSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view(['GET', 'PUT', 'DELETE'])
@authentication_classes([TokenAuthentication])
@permission_classes([IsAuthenticated])
def json_reimbursement_scheme_detail(request, pk):
    try:
        scheme = JsonReimbursementScheme.objects.get(pk=pk)
    except JsonReimbursementScheme.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = JsonReimbursementSchemeSerializer(scheme)
        return Response(serializer.data)
    elif request.method == 'PUT':
        serializer = JsonReimbursementSchemeSerializer(scheme, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    elif request.method == 'DELETE':
        scheme.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)