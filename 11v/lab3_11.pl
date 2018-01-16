pow(_, 0, 1).
pow(Num, P, Res) :- P1 is P - 1, pow(Num, P1, Res1), Res is Res1 * Num.

calc(X, C, Res) :- X < 200, Res is X + C.
calc(X, C, Res) :- X >= 200, pow(X, C, Res).
