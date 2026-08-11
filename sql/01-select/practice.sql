CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;

CREATE TABLE IF NOT EXISTS users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS  students(
    name VARCHAR(50),
    age INT
);

/*
INSERT INTO users (name) VALUES ('Kim'), ('Lee');
SELECT * FROM users;
DESC users;
*/

INSERT INTO students (name, age) VALUES 
('Kim', 25),
('Lee', 19),
('Park', 32),
('Choi', 17);

DESC students;
SELECT name, age FROM students WHERE age >= 20;
