from django.conf.urls import url
from django.contrib.auth import views as auth_views
from . import views

urlpatterns = [
    url(r'login', auth_views.login, name='login',
        kwargs={'redirect_authenticated_user': True}),
    url(r'logout', auth_views.logout,
        {'next_page': '/'}, name='logout'),
    url(r'registration', views.signup, name='signup'),
    url(r'profile', views.update_profile, name='profile'),
    url(r'password/change', views.change_password, name="password_change"),
    url(r'password_change_done',
        auth_views.PasswordChangeDoneView.as_view(template_name='password_change_done.html')),
    url(r'password_reset$', auth_views.password_reset, name='password_reset'),
    url(r'password_reset/done$', auth_views.password_reset_done,
        name='password_reset_done'),
    url(r'reset/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$',
        auth_views.password_reset_confirm, name='password_reset_confirm'),
    url(r'reset/done/', auth_views.password_reset_complete,
        name='password_reset_complete'),

]
