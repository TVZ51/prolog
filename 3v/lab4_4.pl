remove_even([], []).
remove_even([X,_|Xs], [X|Ys]):- remove_even(Xs, Ys).
