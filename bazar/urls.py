from django.conf.urls import url
from . import views

urlpatterns = [
    url('ajax', views.ajax, name='ajax')
]
