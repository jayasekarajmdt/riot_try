from django.db import models

# Create your models here.


class prevData(models.Model):
    input_one = models.IntegerField()
    input_two = models.IntegerField()

    def __str__(self):
        return str(self.pk)
