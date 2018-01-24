from django.forms import ModelForm
from django.forms.models import inlineformset_factory
from django import forms
from django.contrib.admin import widgets

from .models import Entry, Product, Bazar


class ProductForm(ModelForm):

    bazar = forms.ModelChoiceField(
        queryset=Bazar.objects.order_by('title'), initial=2)

    class Meta:
        model = Product
        fields = ('category', 'unit_price', 'amount', 'total', 'bazar')
