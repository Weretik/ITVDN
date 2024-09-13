USE carsShop;


SELECT * FROM carsshop.cars;




SELECT * FROM carsshop.cars ORDER BY mark;  -- Впорядковуємо поле mark за замовчуванням (за зростанням)

SELECT * FROM carsshop.cars ORDER BY model;  -- Впорядковуємо поле model за замовчуванням (за зростанням)

SELECT * FROM carsshop.cars ORDER BY mark, model;  

SELECT * FROM carsshop.cars ORDER BY speed ASC; -- Впорядковуємо поле speed за зростанням

SELECT * FROM carsshop.cars ORDER BY speed DESC; -- Впорядковуємо поле speed за спаданням 

