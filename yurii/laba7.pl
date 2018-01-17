% Лабораторна робота №7
% Обробка матриць

% Виконати перетворення або розрахунок заданої характеристики матриці.
% Задана матриця невідомих розмірів. Отримати матрицю, в якій елементи головної діагоналі поміняються місцями

is_reversed(List, Rev) :-
        is_reversed(List, Rev, []).
is_reversed([], List, List).
is_reversed([Head|Tail], List, Temp_list) :-
        is_reversed(Tail, List, [Head|Temp_list]).

is_replaced([First_row|Another_rows], [First_row_with_replaced_first_element|Another_rows_of_modified_array]) :-
    First_row = [First_element_of_first_row|Another_elements_of_first_row],
    is_reversed(Another_rows,[Last_row|Reversed_central_rows]),
    First_row_with_replaced_first_element = [Last_element_of_last_row|Another_elements_of_first_row],  
    is_reversed(Last_row,[Last_element_of_last_row|Tail_of_last_row_from_ending]),
    is_reversed([First_element_of_first_row|Tail_of_last_row_from_ending], Last_row_with_replaced_last_element),
    is_reversed([Last_row_with_replaced_last_element|Reversed_central_rows], Another_rows_of_modified_array).