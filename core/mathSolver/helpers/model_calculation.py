from scipy.optimize import linprog


class ModelCalculation:
    def __init__(self, budget, expectedPayment, income):
        self.budget = budget
        self.expectedPayment = expectedPayment
        self.income = income

    def calculate(self):
        c = self.income

        A = [self.expectedPayment]
        b = [self.budget]
        iterator_A = 1

        for i in range(0, len(self.income)):  # TODO
            A.append([])

            for j in range(0, len(self.income)):
                if i == j:
                    A[iterator_A].append(1)
                    continue
                A[iterator_A].append(0)

            b.append(1)
            iterator_A = iterator_A + 1

            A.append([])

            for j in range(0, len(self.income)):
                if i == j:
                    A[iterator_A].append(-1)
                    continue
                A[iterator_A].append(0)

            b.append(0)
            iterator_A = iterator_A + 1

        print(A)
        print(b)
        print(c)

        x_bounds = (())

        for i in range(0, len(A[0])):
            x_bounds = ((0, None),) + x_bounds

        res = linprog(c, A_ub=A, b_ub=b,  bounds=x_bounds,
                      method='simplex', options={"disp": True})  # linear programming problem

        print(res.x)

        return res.x
