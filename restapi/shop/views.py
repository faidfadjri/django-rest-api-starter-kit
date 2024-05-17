from django.shortcuts import render
from django.http import JsonResponse

def index(request):
    context = {
        'title': 'Welcome to the Shop!',
    }
    return render(request, 'shop/index.html', context)

def json(request):
    data = {
        'message': 'Hello from the Shop!'
    }
    return JsonResponse(data)
