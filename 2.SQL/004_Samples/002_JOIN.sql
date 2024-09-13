USE carsShop;

-- Приклади JOIN:

-- INNER JOIN - Отримайте інформацію про автомобілі та їхніх власників:
SELECT cars.mark, cars.model, clients.name
FROM cars
INNER JOIN clients ON cars.car_id = clients.id;

-- LEFT OUTER JOIN - Отримайте всіх клієнтів і автомобілі, які їм належать:
SELECT clients.name, cars.mark, cars.model
FROM clients
LEFT OUTER JOIN cars ON clients.id = cars.car_id;

-- RIGHT OUTER JOIN - Отримайте всі автомобілі та їхніх власників:
SELECT clients.name, cars.mark, cars.model
FROM clients
RIGHT OUTER JOIN cars ON clients.id = cars.car_id;

-- CROSS JOIN - Створіть всі можливі комбінації клієнтів і автомобілів:
SELECT clients.name, cars.mark, cars.model
FROM clients
CROSS JOIN cars;
