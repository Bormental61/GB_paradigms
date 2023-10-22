def sort_list_imperative(numbers):
    for i in range(len(numbers) - 1):
        for j in range(len(numbers) - i - 1):
            if numbers[j] < numbers[j + 1]:
                numbers[j], numbers[j + 1] = numbers[j + 1], numbers[j]
    return numbers


def sort_list_declarative(numbers):
    return sorted(numbers, reverse=True)


print(sort_list_imperative([1, 7, 5, 3, 9, 4, 2, 6, 8]))
print(sort_list_declarative([1, 7, 5, 3, 9, 4, 2, 6, 8]))
print(sorted([1, 7, 5, 3, 9, 4, 2, 6, 8], reverse=True))
