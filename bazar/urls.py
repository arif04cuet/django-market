from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'add', views.addEntry.as_view(), name='add_entry')
]
