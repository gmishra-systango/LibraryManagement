from django.shortcuts import render

from books.models import Book
from books.serializers import BookSerializer

from rest_framework import viewsets


# Create your views here.

class BookViewSet(viewsets.ModelViewSet):
    queryset = Book.objects.all()
    serializer_class = BookSerializer