opponents(X, Y) :- person(X, Sport, Discharge), person(Y, Sport, Discharge), X\=Y, nl.

person(a, x, 1).
person(b, x, 1).
person(c, x, 2).
person(d, y, 1).
person(e, y, 2).
person(f, y, 2).
person(g, y, 2).
