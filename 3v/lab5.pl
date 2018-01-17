% +List1, -New List
main(L, L1):-
    length(L, N),
    K3 is N//3*2+1,
    parts(L, 1, K3, L1).

% +List, +Counter, +K3, -Part1
parts([X|L], I, K3, [X|P1]):-
    I<K3,
    I1 is I+1,
    parts(L, I1, K3, P1).
parts(_, _, _, []).
