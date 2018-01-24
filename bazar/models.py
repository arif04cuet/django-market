from django.db import models
from datetime import datetime
from django.contrib.auth.models import User
from django.dispatch import receiver
from django.db.models.signals import pre_save
from geoposition.fields import GeopositionField
from django_extensions.db.models import (
    TitleSlugDescriptionModel, TimeStampedModel)


class Unit(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return "%s" % (self.name)


class Bazar(TitleSlugDescriptionModel, TimeStampedModel):
    location = GeopositionField(blank=True)

    def __str__(self):
        return "%s" % (self.title)


class Category(TitleSlugDescriptionModel, TimeStampedModel):
    parent = models.ForeignKey(
        'self', blank=True, null=True, related_name='children')
    unit = models.ForeignKey(Unit, on_delete=models.SET_NULL, null=True)
    unit_price = models.DecimalField(max_digits=5, decimal_places=2)

    def __str__(self):
        return "%s" % (self.title)


class Entry(TimeStampedModel):
    added_at = models.DateField(default=datetime.now)
    user = models.ForeignKey(User)

    def count_items(self):
        return self.product_set.all().count()

    def count_total(self):
        dictionary = self.product_set.all().aggregate(sum=models.Sum('total'))
        return dictionary['sum']

    def __str__(self):
        return "Entry has been saved for %s" % (self.added_at)


class Product(models.Model):

    unit_price = models.DecimalField(max_digits=5, decimal_places=2, default=0)
    amount = models.IntegerField(default=1)
    total = models.DecimalField(max_digits=5, decimal_places=2, default=0)
    category = models.ForeignKey(Category, verbose_name="Product Name")
    entry = models.ForeignKey(Entry, on_delete=models.CASCADE)
    bazar = models.ForeignKey(Bazar, on_delete=models.CASCADE)

    def __str__(self):
        return "%s" % (self.category)
