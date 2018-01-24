from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.contrib import messages
from django.utils.translation import ugettext_lazy as _
from django.views import generic as generic_view

from . import forms
from . import models
# Create your views here.


def getCategory(request):
    pass
