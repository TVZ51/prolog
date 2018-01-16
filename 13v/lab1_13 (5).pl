swap_halves(L, R) :-
  append(A, B, L),
  length(A, N),
  length(B, N),
  append(B, A, R).
