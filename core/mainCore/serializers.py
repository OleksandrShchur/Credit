from rest_framework import serializers
from django.contrib.auth import get_user_model

User = get_user_model()


class UserSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True)

    class Meta:
        model = User
        fields = ('phone_number', 'email', 'date_of_birth',
                  'last_name', 'first_name', 'patronymic', 'password')

    def create(self, validated_data):
        user = User.objects.create(
            phone_number=validated_data.get('phone_number'),
            email=validated_data.get('email'),
            date_of_birth=validated_data.get('date_of_birth'),
            first_name=validated_data.get('first_name'),
            last_name=validated_data.get('last_name'),
            patronymic=validated_data.get('patronymic')
        )
        user.set_password(validated_data['password'])
        user.save()
        return user
