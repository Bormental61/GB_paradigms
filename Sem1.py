# Lesson task
# Imperative
def check_prime(num):
    if num < 2:
        return False
    for i in range(2, num):
        if num % i == 0:
            return False
    return True


# Declarative
def is_prime(num):
    gen_list = [i for i in range(2, int(num ** 0.5) + 1)]
    if num < 2:
        return False
    list_of_bool = list(map(lambda x: num % x != 0, gen_list))
    return all(list_of_bool)


# print(check_prime(7))
# print((is_prime(15)))

# Sem1
def search_imperative(array, target):
    for num in array:
        if num == target:
            return True
    return False


def search_declarative(array, target):
    return target in array


# print(search_declarative([1, 3, 7, 9], 8))

# Sem2
def pos_neg_imper(arr):
    pos_cnt, neg_cnt, zero_cnt = 0, 0, 0
    for el in arr:
        if el > 0:
            pos_cnt += 1
        elif el < 0:
            neg_cnt += 1
        else:
            zero_cnt += 1
    pos_frac = pos_cnt / len(arr)
    neg_frac = neg_cnt / len(arr)
    zero_frac = zero_cnt / len(arr)
    return pos_frac, neg_frac, zero_frac

def pos_neg_declar(arr):
    pos_cnt = len(list(filter(lambda x: x > 0, arr)))
    neg_cnt = len(list(filter(lambda x: x < 0, arr)))
    zero_cnt = len(list(filter(lambda x: x == 0, arr)))
    counts = [pos_cnt, neg_cnt, zero_cnt]
    return list(map(lambda count: count / len(arr), counts))

print(pos_neg_declar([1,-2,3,-4,5,-6,7,-8,9,0]))
