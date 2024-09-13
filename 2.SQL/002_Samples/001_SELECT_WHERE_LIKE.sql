USE CarsShop;


SELECT * FROM cars; 

-- Виділити поле mark з таблиці cars
SELECT mark FROM cars; 

-- Виділити поле model з таблиці cars
SELECT model FROM cars; 

SELECT speed FROM cars; 

-- Виділити поля mark, speed з таблиці cars
SELECT mark, speed FROM cars; 

-- Виділити поля mark, model, price з таблиці cars
SELECT mark, model, price FROM cars; 

SELECT DISTINCT mark FROM cars;

SELECT * FROM clients
LIMIT 3;

SELECT DISTINCT model FROM cars
LIMIT 2;

SELECT name, age, phone FROM carsshop.clients; 


SELECT * FROM carsshop.clients
WHERE id = 1; 


SELECT * FROM carsshop.clients
WHERE id > 2; 


SELECT * FROM carsshop.clients 
WHERE id BETWEEN 1 AND 3; -- Виділити усе з carsshop.clients, де id знаходиться у проміжку від 1 до 3 включно.


SELECT * FROM carsshop.clients 
WHERE name = 'Andrew' OR  name ='Sergey'; -- Шукаємо запис в якому поле name дорівнює 'Andrew' або 'Sergey' 


SELECT * FROM carsshop.clients 
WHERE name = 'Andrew' AND age > 18; -- Шукаємо запис в якому поле name дорівнює 'Andrew' та вік більше за 18



SELECT name, age FROM carsshop.clients  
WHERE NOT name = 'Andrew';



SELECT name, age FROM carsshop.clients 
WHERE phone LIKE '05%';

SELECT name, age FROM carsshop.clients 
WHERE phone LIKE '%03';  -- Шукаємо запис в якому поле phone завершується на 03

SELECT name, age FROM carsshop.clients 
WHERE phone LIKE '%507%';  


SELECT * FROM carsshop.clients  WHERE age IN (20, 22, 23); -- Шукаємо записи у якому поле age відповідає 20, 22 та 23
-- Еквівалентно:
SeLeCt * from carsshop.clients  where age = 20 or age= 22 or age = 23;
