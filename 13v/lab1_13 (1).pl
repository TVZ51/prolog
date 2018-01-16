country(dynamo, ukraine).
country(shahtar, ukraine).
country(zorya, ukraine).

country(barcelona, spain).
country(malaga, spain).
country(madrid, spain).

country(chelsea, uk).
country(manchester, uk).
country(liverpool, uk).


national(dynamo, 1).
national(shahtar, 2).
national(zorya, 5).

national(barcelona, 2).
national(malaga, 3).
national(madrid, 6).

national(chelsea, 1).
national(manchester, 3).
national(liverpool, 9).

can_meet(T1, T2) :- T1 \== T2, country(T1, C1), country(T2, C2), C1 \== C2,
    national(T1, N1), N1 < 5, national(T2, N2), N2 < 5.
