%?name, ?sex, ?[children]
person(a, 0, [b2, c2, d2, e2]).
person(b, 0, []).

person(b2, 1, [a3, b3, c3, d3]).
person(c2, 0, [f3]).
person(d2, 0, []).
person(e2, 1, []).

person(a3, 0, []).
person(b3, 0, []).
person(c3, 0, []).
person(d3, 0, []).
person(f3, 0, []).

same_parent(Name1, Name2) :-
person(ParentName, _, ChildList),
member(Name1, ChildList),
member(Name2, ChildList).

is_girl(Name) :-
person(Name, 0, _).

is_sisters(Name1, Name2) :-
same_parent(Name1, Name2),
is_girl(Name1),
is_girl(Name2),
Name1\=Name2.
