% Лабораторна робота №5
% Перестановка частин списків
% Заданий список, довжина якого кратна 4. Видалити 1-у чверть списку, а елементи 3-ої розташувати в порядку, зворотньому заданому.

reverse(List, Reversed_list) :-
    reverse(List, Reversed_list, []).

reverse([], Reversed_list, Reversed_list).

reverse([Head|Tail], List, Temp_list) :- reverse(Tail, List, [Head|Temp_list]).

correct_modification(Input_list, Modified_list) :-
    length(Part_1, N),
    length(Part_2, N),
    length(Part_3, N),
    length(Part_4, N),
    append(Part_1,Part_2,Part_12),
    append(Part_3,Part_4,Part_34),
    append(Part_12,Part_34,Input_list),
    reverse(Part_3, Reversed_part_3),
    append(Part_2,Reversed_part_3,Part_23),
    append(Part_23,Part_4,Modified_list).


