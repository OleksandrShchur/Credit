# Generated by Django 4.0.2 on 2023-04-29 16:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainCore', '0003_alter_user_date_of_birth_alter_user_first_name_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='is_admin',
            field=models.BooleanField(default=False),
        ),
    ]
