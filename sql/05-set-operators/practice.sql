CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;

DROP TABLE IF EXISTS seoul_members;
DROP TABLE IF EXISTS busan_members;
DROP TABLE IF EXISTS orders;


CREATE TABLE seoul_members(
    member_id INT,
    member_name VARCHAR(50)
);

CREATE TABLE busan_members(
    member_id INT,
    member_name VARCHAR(50)
);

CREATE TABLE orders(
    order_id INT,
    member_id VARCHAR(50),
    product_name VARCHAR(50)
);

INSERT INTO seoul_members VALUES (1, '김철수');
INSERT INTO seoul_members VALUES (2, '이영희');
INSERT INTO seoul_members VALUES (3, '박민수');

INSERT INTO busan_members VALUES (1, '김철수');
INSERT INTO busan_members VALUES (2, '이영희');
INSERT INTO busan_members VALUES (4, '정지영');

INSERT INTO orders VALUES (101, 1, '노트북');
INSERT INTO orders VALUES (102, 1, '마우스');
INSERT INTO orders VALUES (103, 2, '키보드');
INSERT INTO orders VALUES (104, 99, '무선이어폰');



-- 샘플 데이터 생성

SELECT member_name FROM seoul_members
UNION
SELECT member_name FROM busan_members;

SELECT member_name FROM seoul_members
UNION ALL
SELECT member_name FROM busan_members;

--

SELECT m.member_name, o.product_name
FROM seoul_members m
INNER JOIN orders o ON m.member_id = o.member_id;

SELECT m.member_name, o.product_name
FROM seoul_members m
LEFT JOIN orders o ON m.member_id = o.member_id;
