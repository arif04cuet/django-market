from django.forms import ModelForm
from django.forms.models import inlineformset_factory
from django import forms
from django.contrib.admin import widgets

from .models import Entry, Product


class EntryForm(ModelForm):

    added_at = forms.SplitDateTimeField(widget=widgets.AdminSplitDateTime)

    class Meta:
        model = Entry
        fields = ['added_at']


EntryProductFormset = inlineformset_factory(
    Entry,
    Product,
    fields=['category', 'unit_price', 'amount', 'bazar'],
    can_delete=True,
    extra=1
)
