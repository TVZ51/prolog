male(andrew).
male(joe).
male(jason).

female(jane).
female(kira).

parent(jason, andrew).
parent(jason, jane).
parent(kira, joe).
parent(kira, jane).

marriage(joe, jane).

stepfather(Who, Whom) :- Who \= Whom, male(Who), \+ parent(Whom, Who), parent(Whom, Mother), female(Mother), marriage(Who, Mother).
