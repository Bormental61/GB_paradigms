# Рассчитать след матрицы
# Структурная парадигма
matrix = [[1, 2, 3],
          [4, 5, 6],
          [7, 8, 9]]
trace = 0
for i, row in enumerate(matrix):
    for j, el in enumerate(row):
        if i == j:
            trace += el
print(trace)

# Процедурная парадигма
def get_trace(matrix):
    trace = 0
    for i, row in enumerate(matrix):
        for j, el in enumerate(row):
            if i == j:
                trace += el
    return trace

print(get_trace(matrix))

# Из десятичного в двоичное
def decimal_to_binary(decimal):
    binary = ""
    while decimal > 0:
        binary = str(decimal % 2) + binary
        decimal = decimal // 2
    return binary

print(decimal_to_binary(13))