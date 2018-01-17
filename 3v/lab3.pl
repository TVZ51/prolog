% +X, +N, + K, -Result
func(X, _, K, K):- X < 0.
func(X, N, _, R):-
	X > 0,
	sequence(X, N, 1, 0, R).

% +X, +N, + Counter, +Accumulator, -Result
sequence(X, N, K, Acc, R):-
	K=<N,
	Acc1 is Acc + K*X+2,
	K1 is K+1,
	sequence(X, N, K1, Acc1, R).
sequence(_, N, K, S, S):-
	K=:=N.