# Бинарный поиск
# Функциональное программирование с использованием структурной и процедурной парадигмы

def binary_search(arr, target):
    low = 0
    high = len(arr) - 1

    while low <= high:
        mid = (low + high) // 2

        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            low = mid + 1
        else:
            high = mid - 1

    return -1


def print_result(res):
    if res != -1:
        print(f"Искомый элемент {number} найден в массиве на позиции {res}.")
    else:
        print("Искомый элемент не найден.")


array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
number = 7
number1 = 13

print_result(binary_search(array, number))
print_result(binary_search(array, number1))
