medicine(pill_1).
medicine(pill_2).
medicine(pill_3).

ind(pill_1, flu).
ind(pill_2, flu).
ind(pill_3, flu).

cind(pill_1, pregnancy).
cind(pill_2, pregnancy).
cind(pill_3, antibiotics).

interchangable(P1, P2) :- 
    medicine(P1), 
    medicine(P2), 
    ind(P1, I), ind(P2, I),
    cind(P1, C), cind(P2, C). 