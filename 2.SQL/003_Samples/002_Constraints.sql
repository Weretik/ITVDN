USE carsShop;

--NOT NULL Constraint:
CREATE TABLE orders
(
    order_id INT NOT NULL,
    customer_id INT,
    order_date DATE NOT NULL,
    PRIMARY KEY (order_id)
);

--UNIQUE Constraint:
CREATE TABLE employees
(
    employee_id INT PRIMARY KEY,
    email VARCHAR(50) UNIQUE
);

--PRIMARY KEY Constraint:
CREATE TABLE products
(
    product_id INT PRIMARY KEY,
    name VARCHAR(100)
);

--FOREIGN KEY Constraint:
CREATE TABLE orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

--CHECK Constraint:
CREATE TABLE students
(
    student_id INT PRIMARY KEY,
    age INT CHECK (age >= 18)
);

--DEFAULT Constraint:
CREATE TABLE employees
(
    employee_id INT PRIMARY KEY,
    department VARCHAR(50) DEFAULT 'Unknown',
);

-------------------------------------------------------------------------

-- Adding a NOT NULL Constraint to an Existing Column:
ALTER TABLE cars
MODIFY COLUMN model VARCHAR(30) NOT NULL;

--Adding a UNIQUE Constraint to an Existing Column:
ALTER TABLE clients
ADD CONSTRAINT uq_phone UNIQUE (phone);

--Adding a PRIMARY KEY Constraint to an Existing Column:
ALTER TABLE cars
ADD CONSTRAINT pk_car_id PRIMARY KEY (car_id);

--Adding a FOREIGN KEY Constraint to an Existing Column:
ALTER TABLE orders
ADD CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES clients(id);

--Adding a CHECK Constraint to an Existing Table:
ALTER TABLE employees
ADD CONSTRAINT chk_salary CHECK (salary >= 30000);

--Adding a DEFAULT Constraint to an Existing Column:
ALTER TABLE clients
ALTER COLUMN age SET DEFAULT 25;