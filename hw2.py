def multi_table(num):
    for i in range(1, 10):
        for j in range(1, num+1):
            print(i, " * ", j, " = ", i*j)
        print()

multi_table(13)

# Использовал структурную и процедурную парадигму, так как сам код просто в цикле,
# а завернул в функцию, так как в задании число "n" до которого нам нужна таблица не определено
# и функция позволяет коду работать для любого заданного "n".