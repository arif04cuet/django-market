from django.contrib import admin
from django.db.models import Count, Max
from django.contrib.auth.admin import UserAdmin as DjangoUserAdmin
from django.contrib.auth.models import User

from .models import Unit, Bazar, Category, Entry, Product
from . import forms
# Register your models here.


class ProductInline(admin.TabularInline):
    model = Product
    # form = forms.ProductForm
    fields = ('category', 'unit_price', 'amount', 'total', 'bazar')

    def get_extra(self, request, obj=None, **kwargs):
        extra = 1
        if obj:
            extra = 0

        return extra

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == 'bazar':
            max = Product.objects.filter(entry__user=request.user).annotate(
                numbazar=Count('bazar')).aggregate(max=Max('numbazar'))
            kwargs['initial'] = 1  # max['max']
        return super(ProductInline, self).formfield_for_foreignkey(
            db_field, request, **kwargs
        )


class EntryAdmin(admin.ModelAdmin):

    list_display = ('user', 'added_at', 'count_items', 'count_total')
    list_filter = ('added_at', 'user',)
    list_select_related = ('user',)
    fields = ('added_at',)

    inlines = [ProductInline]

    def get_queryset(self, request):
        qs = super(EntryAdmin, self).get_queryset(request)

        if request.user.is_superuser:
            return qs

        return qs.filter(user=request.user)

    def save_model(self, request, obj, form, change):
        obj.user = request.user
        super().save_model(request, obj, form, change)


class ProductAdmin(admin.ModelAdmin):
    list_display = ('category', 'unit_price', 'bazar')
    list_filter = ('category', 'bazar',)


class UserAdmin(DjangoUserAdmin):

     # Static overriding
    fieldsets = (
        (None, {'fields': ('username', 'password')}),
        (('Personal info'), {
            'fields': ('first_name', 'last_name', 'email')}),
        (('Important dates'), {'fields': ('last_login', 'date_joined')}),
    )

    def get_queryset(self, request):
        qs = super(UserAdmin, self).get_queryset(request)
        if request.user.is_superuser:
            return qs
        return qs.filter(pk=request.user.pk)


admin.site.unregister(User)
admin.site.register(User, UserAdmin)
admin.site.register(Unit)
admin.site.register(Bazar)
admin.site.register(Category)
admin.site.register(Product, ProductAdmin)
admin.site.register(Entry, EntryAdmin)
