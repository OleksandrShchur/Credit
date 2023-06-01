from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager, PermissionsMixin


class UserManager(BaseUserManager):
    def create_user(self, email, password=None, **extra_fields):
        if not email:
            raise ValueError('The Email field must be set')
        email = self.normalize_email(email)
        user = self.model(email=email, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, password=None, **extra_fields):
        extra_fields.setdefault('is_staff', True)
        return self.create_user(email, password, **extra_fields)


class User(AbstractBaseUser, PermissionsMixin):
    phone_number = models.CharField(max_length=100, null=True)
    email = models.CharField(max_length=300, unique=True)
    date_of_birth = models.DateTimeField(null=True)
    last_name = models.CharField(max_length=100, null=True)
    first_name = models.CharField(max_length=100, null=True)
    patronymic = models.CharField(max_length=100, null=True)

    created_date = models.DateTimeField(auto_now_add=True)
    is_staff = models.BooleanField(default=False)
    is_consultant = models.BooleanField(default=False)
    USERNAME_FIELD = 'email'

    objects = UserManager()

    def __str__(self):
        return self.email


class Borrowing(models.Model):
    id = models.AutoField(primary_key=True, null=False)
    credit_name = models.CharField(max_length=300)
    interest_rate = models.FloatField()
    term = models.CharField(max_length=500)


class CreditRequest(models.Model):
    id = models.AutoField(primary_key=True, null=False)
    borrower_id = models.ForeignKey(User, on_delete=models.CASCADE)
    borrowing_id = models.ForeignKey(Borrowing, on_delete=models.CASCADE)
    date_of_taking = models.DateTimeField()
    end_date = models.DateTimeField()
    credit_amount = models.FloatField()


class CreditTaking(models.Model):
    id = models.AutoField(primary_key=True, null=False)
    request_id = models.ForeignKey(CreditRequest, on_delete=models.CASCADE)
    confirmation_date = models.DateTimeField()


class JsonReimbursementScheme(models.Model):
    id = models.AutoField(primary_key=True, null=False)
    scheme = models.TextField()
    date = models.DateTimeField()
    borrower_id = models.ForeignKey(User, on_delete=models.CASCADE)


class ReturnScheme(models.Model):
    id = models.AutoField(primary_key=True, null=False)
    borrower_id = models.ForeignKey(User, on_delete=models.CASCADE)
    borrowing_id = models.ForeignKey(Borrowing, on_delete=models.CASCADE)


class Return(models.Model):
    id = models.AutoField(primary_key=True, null=False)
    scheme_id = models.ForeignKey(ReturnScheme, on_delete=models.CASCADE)
    date = models.DateTimeField()
    return_value = models.FloatField()
