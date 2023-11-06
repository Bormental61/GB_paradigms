 # Среднеквадратичная ошибка
 # Функциональное программирование по формуле, структурное при выводе результата, процедурное при использовании функции

def calc_mse(expect, real):
    s = 0
    n = min(len(expect), len(real))
    for i in range(n):
        s += (real[i] - expect[i]) ** 2
    return s / n


print(calc_mse([1, 2, 3, 4, 5], [1, 2, 3, 5, 6]))
