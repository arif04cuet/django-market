from django.contrib import admin


from .models import Unit, Bazar, Category, Entry, Product
# Register your models here.


class ProductInline(admin.TabularInline):
    model = Product
    fields = ('category', 'unit_price', 'amount', 'bazar')


class EntryAdmin(admin.ModelAdmin):

    list_display = ('user', 'added_at', 'count_items')
    fields = ('added_at',)

    inlines = [ProductInline]

    def save_model(self, request, obj, form, change):
        obj.user = request.user
        super().save_model(request, obj, form, change)


admin.site.register(Unit)
admin.site.register(Bazar)
admin.site.register(Category)
admin.site.register(Product)
admin.site.register(Entry, EntryAdmin)
