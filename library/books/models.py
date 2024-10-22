from django.db import models
from django.utils import timezone

# Create your models here.

class Book(models.Model):
    title = models.CharField(max_length=200)
    description = models.CharField(max_length=200)
    pub_date = models.DateTimeField(default=timezone.now)
    is_active = models.BooleanField(default=True)