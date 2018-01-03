from django.contrib import admin

from .models import Unit, Bazar, Category, Product
# Register your models here.

admin.site.register(Unit)
admin.site.register(Bazar)
admin.site.register(Category)
admin.site.register(Product)
