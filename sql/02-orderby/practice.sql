CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;

-- 1회용
/*
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);
INSERT INTO employees (id, name, department, salary, hire_date) VALUES
(1, '김철수', '개발부', 5000000, '2021-03-01'),
(2, '이영희', '기획부', 4500000, '2022-01-15'),
(3, '박민수', '개발부', 5500000, '2020-07-20'),
(4, '정수진', '인사부', 4000000, '2023-05-10'),
(5, '최동훈', '기획부', 4800000, '2019-11-05'),
(6, '한소희', '개발부', 5000000, '2022-09-01');
*/

-- 연봉순으로출력
SELECT * FROM employees
ORDER BY salary DESC;

-- 입사일이 빠른순
SELECT * FROM employees
ORDER BY hire_date ASC;

-- 부서별 정렬 후, 급여 높은 순(다중 컬럼 정렬할 수 있음)
SELECT * FROM employees
ORDER BY department ASC, salary DESC;

