get_el(0, [Head|_], Head) :- !.

get_el(N, [_|Tail], Elem) :-
  M is N-1,
  get_el(M, Tail, Elem).


main_diagonal_sum_inner(Size, Size, _Matrix, 0):-!.
main_diagonal_sum_inner(Index, Size, [Row|TailRows], Sum):-
  NextIndex is Index + 1,
  main_diagonal_sum_inner(NextIndex, Size, TailRows, TailSum),
  get_el(Index, Row, Element), Sum is TailSum + Element.

len([], 0).
len([_|T], Res) :- len(T, Res1), Res is Res1 + 1.
size([M|Ms], R, C) :- len(M, C), len([M|Ms], R).

smaller(F, S, R):- F < S, R is F.
smaller(F, S, R):- F >= S, R is S.

main_diagonal_sum(M, S) :- size(M, R, C), smaller(R, C, Sz),
  main_diagonal_sum_inner(0, Sz, M, S).

