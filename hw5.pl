list_sum([], 0).
list_sum([H|T], Sum) :-
    list_sum(T, Sum1),
    Sum is H + Sum1.

?- sum_list([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], Sum).
Sum = 55