get_el(0, [Head|_], Head) :- !.
get_el(N, [_|Tail], Elem) :-
  M is N-1,
  get_el(M, Tail, Elem).

len([], 0).
len([_|T], Res) :- len(T, Res1), Res is Res1 + 1.

replace([_|T], 0, LE, [LE|T]).
replace([H|T1], I, LE, [H|T2]) :- I > -1, I1 is I - 1, replace(T1, I1, LE, T2), !.
replace(L, _, _, L).

radial_indexes(Sz, R, F, S) :-
  O is mod(Sz, 2),
  F is Sz // 2 - R,
  S is Sz // 2 + R - 1 + O.

radial_swap(L, Rad, Res) :- 
  len(L, Sz), radial_indexes(Sz, Rad, FI, SI),
  get_el(FI, L, F), get_el(SI, L, S), 
  replace(L, FI, S, Res1), replace(Res1, SI, F, Res).

swap_upper_diagonals_inner(M, 0, M).
swap_upper_diagonals_inner([RIn|OIn], I, [ROut|OOut]) :- 
  I1 is I - 1, swap_upper_diagonals_inner(OIn, I1, OOut),
  radial_swap(RIn, I, ROut).

swap_upper_diagonals([M|Ms], Out) :- len([M|Ms], S), I is S // 2, swap_upper_diagonals_inner([M|Ms], I, Out).