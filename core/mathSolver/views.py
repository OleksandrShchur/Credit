from django.shortcuts import render
import json
# Create your views here.
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt


@csrf_exempt
def calculate_model(request):
    if request.method == "POST":
        budget = request.POST.get('budget')
        data = request.POST.get('data')
        if data is None or budget is None:
            return HttpResponse(status=400)
        try:
            budget = int(budget)
            data = json.loads(data)
        except Exception:
            return HttpResponse(status=400)
        return HttpResponse(status=200)
    else:
        return HttpResponse(status=400)
