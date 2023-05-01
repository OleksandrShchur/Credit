from scipy.optimize import linprog


class ModelCalculation:
    def __init__(self, budget, expectedPayment, income):
        self.budget = budget
        self.expectedPayment = expectedPayment
        self.income = income

    def calculate(self):
        c = self.income
        A = [
            [500, 1000, 2500, 5000, 10000],
            [1, 0, 0, 0, 1],
            [0, 1, 0, 0, 0],
            [0, 0, 1, 0, 0],
            [0, 0, 0, 1, 0],
            [0, 0, 0, 0, 1],
            [-1, 0, 0, 0, 1],
            [0, -1, 0, 0, 0],
            [0, 0, -1, 0, 0],
            [0, 0, 0, -1, 0],
            [0, 0, 0, 0, -1]
        ]
        b = [18500, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0]

        x1 = (0, None)
        x2 = (0, None)
        x3 = (0, None)
        x4 = (0, None)
        x5 = (0, None)

        res = linprog(c, A_ub=A, b_ub=b,  bounds=(x1, x2, x3, x4, x5),
                      method='simplex', options={"disp": True})  # linear programming problem

        print(res.x)

        return res.x
