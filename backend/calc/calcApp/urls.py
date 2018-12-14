from django.urls import path

from . import views
from .views import dataListView

urlpatterns = [
    path('', views.index, name='index'),
    path('dataset', dataListView.as_view()),
]
