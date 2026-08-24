CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;

DROP TABLE IF EXISTS users;

CREATE TABLE users(
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

TRUNCATE TABLE users;
DESC users;

-- 열을 추가할 때 사용한다.
ALTER TABLE users ADD newcol INTEGER;
DESC users;

ALTER TABLE users MODIFY newcol VARCHAR(20);
DESC users;

-- 열을 삭제할 때 사용한다.
ALTER TABLE users DROP newcol;
DESC users;

