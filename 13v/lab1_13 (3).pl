pow(_, 0, 1).
pow(Num, P, Res) :- P1 is P - 1, pow(Num, P1, Res1), Res is Res1 * Num.

calc(X, _, Res) :- X < 2, Res is 2.
calc(X, K, Res) :- X >= 2, K1 is K * 2,
    pow(X, K, PF), pow(X, K1, PS), Res is PF + PS.
