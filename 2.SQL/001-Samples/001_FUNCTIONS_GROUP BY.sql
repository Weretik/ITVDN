USE carsShop;

-- Підрахувати загальну кількість автомобілів у таблиці 'cars'
SELECT COUNT(*) AS total_cars FROM cars;

-- Знайти максимальну швидкість серед усіх автомобілів у таблиці 'cars'
SELECT MAX(speed) AS max_speed FROM cars;

-- Визначити мінімальну ціну автомобіля у таблиці 'cars'
SELECT MIN(price) AS min_price FROM cars;

-- Розрахувати загальну суму цін на автомобілі у таблиці 'cars'
SELECT SUM(price) AS total_price FROM cars;

-- Знайти середню швидкість серед усіх автомобілів у таблиці 'cars'
SELECT AVG(speed) AS avg_speed FROM cars;

-- Згрупувати автомобілі у таблиці 'cars' за їхнім 'mark' (брендом) 
-- та підрахувати кількість автомобілів для кожного бренду, відображаючи тільки бренди з більш ніж 2 автомобілями
SELECT mark, COUNT(*) AS car_count
FROM cars
GROUP BY mark
HAVING car_count > 2;

-- Згрупувати автомобілі у таблиці 'cars' за їхньою 'speed' (швидкістю) 
-- та розрахувати середню ціну для автомобілів у кожній категорії швидкості,
-- відображаючи тільки категорії, де середня ціна перевищує $30,000
SELECT speed, AVG(price) AS avg_price
FROM cars
GROUP BY speed
HAVING avg_price > 30000;