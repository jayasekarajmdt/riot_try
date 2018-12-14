from rest_framework import serializers
from .models import prevData


class dataSerializer(serializers.ModelSerializer):
    class Meta:
        model = prevData
        fields = ('input_one', 'input_two')
