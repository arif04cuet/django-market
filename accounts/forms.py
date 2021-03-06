from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.utils.translation import ugettext_lazy as _
from .models import Profile


class SignUpForm(UserCreationForm):

    is_staff = forms.BooleanField(
        widget=forms.HiddenInput(), required=False, initial=True)

    class Meta:
        model = User
        fields = ('username', 'is_staff',)
        labels = {
            'username': _('Mobile #'),
        }


class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ('username', 'email')


class ProfileForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ('name', 'location',)
