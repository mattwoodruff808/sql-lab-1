-- Table - person

-- Problem 1
CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    height FLOAT,
    city VARCHAR(100),
    favorite_color VARCHAR(100)
);

-- Problem 2
INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Kaladin', 21, 182.88, 'Hearthstone', 'Black'),
('Dalinar', 50, 190.50, 'Kholinar', 'Blue'),
('Shallan', 18, 160.02, 'Vedenar', 'Yellow with Black'),
('Szeth', 25, 177.80, 'Shinovar', 'White'),
('Adolin', 22, 185.42, 'Kholinar', 'Red');

-- Problem 3
SELECT * FROM person
ORDER BY height DESC;

-- Problem 4
SELECT * FROM person
ORDER BY height ASC;

-- Problem 5
SELECT * FROM person
ORDER BY age DESC;

-- Problem 6
SELECT * FROM person
WHERE age > 20;

-- Problem 7
SELECT * FROM person
WHERE age = 18;

-- Problem 8
SELECT * FROM person
WHERE age < 20
OR age > 30;

-- Problem 9
SELECT * FROM person
WHERE age != 27;

-- Problem 10
SELECT * FROM person
WHERE favorite_color != 'Red';

-- Problem 11
SELECT * FROM person
WHERE favorite_color != 'Red'
OR favorite_color != 'Kholin Blue';

-- Problem 12
SELECT * FROM person
WHERE favorite_color = 'Orange'
OR favorite_color = 'Green';

-- Problem 13
SELECT * FROM person
WHERE favorite_color IN ('Orange','Green', 'Kholin Blue');

-- Problem 14
SELECT * FROM person
WHERE favorite_color IN ('Yellow with Black', 'Purple');

-----------------------


-- Table - orders

-- Problem 1
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name VARCHAR(150),
    product_price FLOAT,
    quantity INT
);

-- Problem 2
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(3434, 'Big Mac', 4.25, 2),
(3434, 'Large Fry', 1, 1),
(2000, 'Hot & Spicy McChicken', 1, 2),
(4444, 'Crispy Sprite', 1, 1),
(1233, 'Grand Mac', 7.49, 4);

-- Problem 3
SELECT * FROM orders;

-- Problem 4
SELECT SUM(quantity)
FROM orders;

-- Problem 5
SELECT SUM(product_price * quantity)
FROM orders;

-- Problem 6
SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 3434;

-----------------------


-- Table - artist

-- Problem 1
INSERT INTO artist
(name)
VALUES
('NF'),
('KK Slider'),
('Jack Black');

-- Problem 2
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

-- Problem 3
SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

-- Problem 4
SELECT * FROM artist
WHERE name LIKE 'Black%';

-- Problem 5
SELECT * FROM artist
WHERE name LIKE '%Black%';

-----------------------


-- Table - employee

-- Problem 1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

-- Problem 2
SELECT MAX(birth_date) FROM employee;

-- Problem 3
SELECT MIN(birth_date) FROM employee;

-- Problem 4
SELECT * FROM employee
WHERE reports_to = 2;

-- Problem 5
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-----------------------


-- Table - invoice

-- Problem 1
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-- Problem 2
SELECT MAX(total) FROM invoice;

-- Problem 3
SELECT MIN(total) FROM invoice;

-- Problem 4
SELECT * FROM invoice
WHERE total > 5;

-- Problem 5
SELECT COUNT(*) FROM invoice
WHERE total < 5;

-- Problem 6
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- Problem 7
SELECT AVG(total) FROM invoice;

-- Problem 8
SELECT SUM(total) FROM invoice;