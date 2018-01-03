from django.db import models
from geoposition.fields import GeopositionField
from django_extensions.db.models import (
    TitleSlugDescriptionModel, TimeStampedModel)


class Unit(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return "%s" % (self.name)


class Bazar(TitleSlugDescriptionModel, TimeStampedModel):
    location = GeopositionField()

    def __str__(self):
        return "%s" % (self.title)


class Category(TitleSlugDescriptionModel, TimeStampedModel):
    parent = models.ForeignKey(
        'self', blank=True, null=True, related_name='children')
    unit = models.ForeignKey(Unit)
    unit_price = models.DecimalField(max_digits=5, decimal_places=2)

    def __str__(self):
        return "%s" % (self.title)


class Product(TimeStampedModel):
    category = models.ForeignKey(Category, verbose_name="Product Name")
    bazar = models.ForeignKey(Bazar, on_delete=models.CASCADE)
    unit_price = models.DecimalField(max_digits=5, decimal_places=2)
    amount = models.IntegerField(default=1)

    def __str__(self):
        return "%s" % (self.category)
