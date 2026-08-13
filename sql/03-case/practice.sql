CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;

/*
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT,
    stock INT
);

INSERT INTO products (product_id, product_name, category, price, stock) VALUES
(1, '노트북', '전자기기', 1500000, 5),
(2, '스마트폰', '전자기기', 900000, 0),
(3, '무선이어폰', '전자기기', 150000, 25),
(4, '책상', '가구', 250000, 3),
(5, '의자', '가구', 120000, 12),
(6, '볼펜세트', '문구', 5000, 100);
*/

SELECT product_name, stock,
    CASE
        WHEN stock = 0 THEN '품절'
        WHEN stock < 10 THEN '재고부족'
        ELSE '판매중'
    END AS stock_status
FROM products;