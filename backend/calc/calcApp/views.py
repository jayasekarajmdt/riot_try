from django.shortcuts import render

from django.http import HttpResponse
from rest_framework.generics import ListAPIView
from .serializers import dataSerializer
from .models import prevData


def index(request):
    return HttpResponse("Hello from Backend")


class dataListView(ListAPIView):
    queryset = prevData.objects.all()
    serializer_class = dataSerializer
