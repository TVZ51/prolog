last_el_inner(LE, [], LE). 
last_el_inner(_, [H1|T], LE) :- last_el_inner(H1, T, LE). 
last_el([H|T], LE) :- last_el_inner(H, T, LE).

replace_nth_with([_|T], 0, LE, [LE|T]).
replace_nth_with([H|T1], I, LE, [H|T2]) :- I > -1, I1 is I - 1, replace_nth_with(T1, I1, LE, T2), !.
replace_nth_with(L, _, _, L).

replace_nth_with_last(L, N, R) :- last_el(L, LE), replace_nth_with(L, N, LE, R).

