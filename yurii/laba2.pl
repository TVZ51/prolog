%Лабораторна робота №2
%Представлення родинних зв'язків

%Описати на Пролозі відношення, що визначає споріднений звязок: "чи є люди сватами (батьки чоловіка і дружини) одне одному?".
%Використовувати наступну структура аргументів:
%is_relation(?Who ?Whom). У БД представити факти, що представляють одне або декілька з наступних відносин:
%is_parent(?м'я батька, Ім'я дитини), is_woman(Ім'я), is_man(Ім'я), is_marriage(Ім'я чоловіка, Ім'я жінки)


parent(christian, megan).
parent(erica, megan).

parent(petro, vasilisa).
parent(nastya, vasilisa).

parent(steve, moss).
parent(kyla, moss).

parent(mefodiy, ivan).
parent(ksenia, ivan).

woman(Woman) :- member(Woman, [mother1, mother2, mother3, mother4, woman1, woman2]).
man(Man) :- member(Man, [father1, father2, father3, father4, man3, man4]).

husband(ivan, vasilisa).
husband(moss, megan).

wife(Wife,Husband) :- husband(Husband,Wife).
marriage(Person1, Person2) :- husband(Person1,Person2); wife(Person1,Person2).

matchmaker(Parent1,Parent2) :- parent(Parent1,Child1), parent(Parent2,Child2), marriage(Child1,Child2).