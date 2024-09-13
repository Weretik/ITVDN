USE carsShop;

-- Приклади використання INSERT, UPDATE, DELETE та різних видів JOIN в MySQL

-- Приклади INSERT:

-- Додайте новий автомобіль до таблиці 'cars':
INSERT INTO cars (mark, model, speed, price)
VALUES ('Nissan', 'Sentra', 140, 20000);

-- Додайте нового клієнта до таблиці 'clients':
INSERT INTO clients (name, age, phone)
VALUES ('Maria', 30, '555-123-4567');

-- Приклад UPDATE:

-- Оновіть ціну певного автомобіля у таблиці 'cars':
UPDATE cars
SET price = 22000
WHERE mark = 'Nissan' AND model = 'Sentra';

-- Приклад DELETE:

-- Видаліть автомобіль з таблиці 'cars' на основі певних критеріїв:
DELETE FROM cars
WHERE mark = 'Nissan' AND model = 'Sentra';
