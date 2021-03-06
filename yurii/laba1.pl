% Лабораторна робота №1
% Представлення фраз Пролог-програми

% Написати Пролог-програму, що скаладається з правила, що два різні компоненти одягу можна
% одягати одночасно, якщо вони відносяться до одного сезону і відповідають одному типу погоди,
% і БД, необхійдній для отримання відповідей на запити до цього правила.

сезонна_належність(чоботи, осінь).
сезонна_належність(куртка, осінь).
сезонна_належність(кросівки, осінь).
сезонна_належність(пальто, осінь).

сезонна_належність(резинові_чоботи, літо).
сезонна_належність(дощовик, літо).
сезонна_належність(сонячні_окуляри, літо).
сезонна_належність(бейсболка, літо).

погодня_належність(чоботи, дощ).
погодня_належність(куртка, дощ).
погодня_належність(кросівки, ясно).
погодня_належність(пальто, ясно).

погодня_належність(резинові_чоботи, дощ).
погодня_належність(дощовик, дощ).
погодня_належність(сонячні_окуляри, ясно).
погодня_належність(бейсболка, ясно).

можна_вдягати_разом(Одяг1, Одяг2) :-
    погодня_належність(Одяг1, Погода),
    погодня_належність(Одяг2, Погода),
    сезонна_належність(Одяг1, Сезон),
    сезонна_належність(Одяг2, Сезон),
    Одяг1\==Одяг2.
