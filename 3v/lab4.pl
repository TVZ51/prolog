func([X|Xs], Result) :-
    last(Xs, Last),
    Sum is Last + X,
    append([X|Xs], [Sum], Result).