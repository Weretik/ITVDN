USE carsShop;

ALTER TABLE cars
ADD fuel_type VARCHAR(20) NOT NULL;

ALTER TABLE clients
DROP COLUMN age;

ALTER TABLE table_name
RENAME COLUMN mark to car_mark;

ALTER TABLE cars
MODIFY COLUMN model VARCHAR(30);

DROP DATABASE CarsShop;

DROP TABLE clients;

TRUNCATE TABLE cars;