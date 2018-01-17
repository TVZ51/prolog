% Лабораторна робота №4
% Обробка списку
% Видалити із списку елементи, що повторюються, залишивши один екземпляр.

remove_all_occurences(_, [], []).
remove_all_occurences(Element_to_remove, [Head | Tail], Tail_without_elements_to_remove) :-
    Element_to_remove == Head,
    remove_all_occurences(Element_to_remove, Tail, Tail_without_elements_to_remove).

remove_all_occurences(Element_to_remove, [Head | Tail], [Head | Tail_without_elements_to_remove]) :-
    Element_to_remove \== Head,
    remove_all_occurences(Element_to_remove, Tail, Tail_without_elements_to_remove).

remove_duplicates([], []).
remove_duplicates([Head | Tail], [Head | Tail_without_any_duplicates]) :-
    remove_all_occurences(Head, Tail, Tail_with_all_heads_removed),
    remove_duplicates(Tail_with_all_heads_removed, Tail_without_any_duplicates).