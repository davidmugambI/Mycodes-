from .models import User
from django import forms
from django.contrib.auth.forms import UserCreationForm


class UsersDetailsForm(UserCreationForm):
    password2 = forms.CharField(label='Repeat Password', widget=forms.PasswordInput)
    username = forms.EmailField(label='Username', widget=forms.TextInput(attrs={'placeholder':
                                                                                    'your-email@something.com'}))

    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'username')


class LoginForm(forms.Form):
    username = forms.EmailField(label='Username', widget=forms.TextInput(attrs={'placeholder':
                                                                                'your-email@something.com'}))
    password = forms.CharField(widget=forms.PasswordInput)