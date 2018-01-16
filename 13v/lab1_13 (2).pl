male(andrew).
male(jason).
male(joe).
male(keith).
male(rob).

female(jane).
female(cath).
female(kira).
female(mary).

parent(joe, andrew).
parent(joe, jane).
parent(keith, andrew).
parent(keith, jane).
parent(kira, jason).
parent(kira, cath).
parent(mary, jason).
parent(mary, cath).

marriage(jason, cath).
marriage(joe, kira).
marriage(andrew, jane).
marriage(rob, mary).

% is_d1(Who, Whom) :- Who \== Whom, female(Whom), male(Who), marriage(H,
% Whom).

is_diver(Who, Whom) :- Who \== Whom,
    female(Whom),
    male(Who),
    marriage(H, Whom),
    parent(H, P1),
    parent(Who, P2),
    P1 == P2.
