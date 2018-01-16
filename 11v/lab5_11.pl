app([],L,L). 
app([H|T],L2,[H|L3])  :-  app(T,L2,L3).

len([], 0).
len([_|T], Res) :- len(T, Res1), Res is Res1 + 1.

remove_third(L, R) :-
  app(R, B, L),
  len(R, RL),
  len(B, BL),
  RL is BL * 2.
  
