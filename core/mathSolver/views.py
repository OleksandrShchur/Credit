import json
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt

from mathSolver.helpers.model_calculation import ModelCalculation


@csrf_exempt
def calculate_model(request):
    if request.method == "POST":
        body_unicode = request.body.decode('utf-8')
        body = json.loads(body_unicode)
        budget = body['budget']
        expectedPayment = body['expectedPayment']
        income = body['income']

        if budget is None:
            return HttpResponse(status=400)

        budget = int(budget)

        model_calculate = ModelCalculation(
            budget, expectedPayment, income)

        result = model_calculate.calculate()

        numbers = [
            float(num) for num in str(result)[1:-1].split()]

        return HttpResponse(status=200, content=json.dumps(numbers))

    else:
        return HttpResponse(status=400)
