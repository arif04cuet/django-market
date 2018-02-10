from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.contrib.auth import login, authenticate, update_session_auth_hash
from django.contrib.auth.forms import UserCreationForm, PasswordChangeForm
from django.shortcuts import render, redirect
from django.contrib import messages
from django.utils.translation import ugettext_lazy as _
import requests
from django.contrib.auth.models import User
from django.db import IntegrityError
from django.shortcuts import render_to_response
from .forms import SignUpForm, UserForm, ProfileForm


# Create your views here.


def home(request):
    return redirect('/admin')


@login_required
def update_profile(request):
    if request.method == 'POST':
        user_form = UserForm(request.POST, instance=request.user)
        profile_form = ProfileForm(request.POST, instance=request.user.profile)
        if user_form.is_valid() and profile_form.is_valid():
            user_form.save()
            profile_form.save()
            messages.success(request, _(
                'Your profile was successfully updated!'))
            return redirect('/')
        else:
            messages.error(request, _('Please correct the error below.'))
    else:
        user_form = UserForm(instance=request.user)
        profile_form = ProfileForm(instance=request.user.profile)

    return render(request, 'profile.html', {
        'user_form': user_form,
        'profile_form': profile_form
    })


@login_required
def change_password(request):
    if request.method == 'POST':
        form = PasswordChangeForm(request.user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)  # Important!
            messages.success(
                request, 'Your password was successfully updated!')
            return redirect('change_password')
        else:
            messages.error(request, 'Please correct the error below.')
    else:
        form = PasswordChangeForm(request.user)

    return render(request, 'registration/change_password.html', {
        'form': form
    })


def signup(request):
    if request.method == 'POST':
        username = request.POST['username']
        rand_password = User.objects.make_random_password(length=4)
        ms = username
        txt = 'Your username/password is : %s \n %s' % (
            username, rand_password)

        if not ms.startswith('+88'):
            ms = '+88%s' % ms

        # save user
        try:
            user = User.objects.create_user(
                username=username, password=rand_password, is_staff=True)
            # send sms
            url = "http://123.49.3.58:8081/web_send_sms.php?ms=%s&txt=%s&username=pmoffice&password=pmoffice" % (
                ms, txt)
            r = requests.get(url)
            messages.success(
                request, 'Signup Success! Pls check your mobile sms to get password')

        except IntegrityError as e:
            #message = 'Opps! %s' % str(e)
            messages.error(request, 'Username already exist!')

        return redirect('/admin')

    # return render(request, 'registration/signup.html')


def forgot_password(request):
    if request.method == 'POST':
        username = request.POST['username']
        rand_password = User.objects.make_random_password(length=4)
        ms = username
        txt = 'Your username/password is : %s \n %s' % (
            username, rand_password)

        if not ms.startswith('+88'):
            ms = '+88%s' % ms

        # save user
        try:
            user = User.objects.get(username__exact=username)
            user.set_password(rand_password)
            user.save()
            # send sms
            url = "http://123.49.3.58:8081/web_send_sms.php?ms=%s&txt=%s&username=pmoffice&password=pmoffice" % (
                ms, txt)
            r = requests.get(url)
            messages.success(
                request, 'Pls check your mobile sms to get password')

        except User.DoesNotExist:
            #message = 'Opps! %s' % str(e)
            messages.error(request, 'Username does not exist!')

        return redirect('/admin')

    # return render(request, 'registration/signup.html')
