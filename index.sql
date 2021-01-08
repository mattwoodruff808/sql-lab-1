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