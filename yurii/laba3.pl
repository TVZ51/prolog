% Лабораторна робота №3
% Арифметичні операції. Організації циклу на Пролозі

% Представити на Пролозі функцію f(x):
% f(x) = x, якщо 1<x<2
% f(x) = П(kx) k->[1;10], якщо x>2

calculate(Argument, Result) :- Argument > 1, Argument < 2, Result is Argument.
calculate(Argument, Result) :- Argument > 2, calculate(Argument, 10, Result).
calculate(Argument, 1, Result) :- Argument > 2, Result is Argument.
calculate(Argument, Coefficient, Result) :-
    Argument > 2,
    Next_Coefficient is Coefficient-1,
    calculate(Argument, Next_Coefficient, Intermediate_Result),
    Result is Coefficient * Argument * Intermediate_Result.