from django.urls import path

from . import views


urlpatterns = [
    path('home/', views.home_view, name='home'),
    path('login/', views.user_login, name='login'),
    path('data/', views.details_view, name='data'),
    path('logout/', views.user_logout, name='logout'),
]