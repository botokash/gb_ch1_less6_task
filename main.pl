phonebook(popov, 87071231231, address(moscow, pushkin, 12, 1)).
phonebook(ivanov, 87051231231, address(moscow, lenina, 2, 11)).
phonebook(popov, 87771231231, address(novosibirsk, lenina, 8, 5)).

car(popov, moscow, kia, black, 100000).
car(popov, moscow, nissan, purple, 200000).
car(ivanov, moscow, ford, white, 350000).
car(popov, novosibirsk, gazel, red, 50000).

deposit(popov, moscow, gazprom, 11234, 8000).
deposit(ivanov, moscow, alfa, 23411, 500).
deposit(popov, novosibirsk, prombank, 97654, 20000).
deposit(popov, novosibirsk, gazprom, 71654, 10000).

car_base(Phone, Family, City, CarModel, CarPrice) :- phonebook(Family, Phone, address(City, _ ,_ ,_)), car(Family, City, CarModel, _, CarPrice).
deposit_base(Family, City, Street, Bank, Phone) :- phonebook(Family, Phone, address(City, Street ,_ ,_)), deposit(Family, City, Bank, _, _).

/** <examples>
?- car_base(87071231231, Family, _, CarModel, CarPrice).
?- car_base(87071231231, _, _, CarModel, _).
?- deposit_base(popov, novosibirsk, Street, Bank, Phone).
*/
