from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.contrib import messages
from django.utils.translation import ugettext_lazy as _
from django.views import generic as generic_view
from django.http import JsonResponse
from datetime import datetime, timedelta, time

from . import forms
from . import models
# Create your views here.


def getCategory(request):
    pass


def ajax(request):

    product_id = request.GET.get('product_id', None)
    user_id = request.GET.get('user_id', None)
    no_of_day = request.GET.get('no_of_day', 5)

    # default
    today = datetime.now().date()
    date_to = today - timedelta(1)
    date_from = today - timedelta(no_of_day)

    date_to = request.GET.get('date_to', date_to)
    date_from = request.GET.get('date_from', date_from)
    data = models.Bazar.getBazarListByProduct(product_id, date_from, date_to)

    dataset = []
    for p in data:
        tmp = {}
        tmp['product_id'] = p.category_id
        tmp['title'] = p.title
        tmp['price'] = p.price
        dataset.append(tmp)

    data = {
        'date_from': date_from,
        'date_to': date_to,
        'data': dataset
    }

    return JsonResponse(data)
