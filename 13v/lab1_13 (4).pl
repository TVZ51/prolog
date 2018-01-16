remove_elem(_,[],[]).
remove_elem(X,L1,L2) :-
   L1 = [H|T],
   X == H,
   remove_elem(X,T,Temp),
   L2 = Temp.
remove_elem(X,L1,L2) :-
   L1 = [H|T],
   X \== H,
   remove_elem(X,T,Temp),
   L2 = [H|Temp].
