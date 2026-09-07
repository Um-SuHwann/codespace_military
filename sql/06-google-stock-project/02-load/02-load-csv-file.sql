TRUNCATE TABLE google_stock_daily;

LOAD DATA INFILE '/var/lib/mysql-files/GOOGL.csv' -- CSV 파일의 전체 경로
INTO TABLE google_stock_daily
CHARACTER SET utf8mb4                    -- 인코딩 설정 (한글 깨짐 방지)
FIELDS TERMINATED BY ','                 -- 데이터 구분자 (콤마)
ENCLOSED BY '"'                          -- 값이 큰따옴표로 감싸져 있는 경우 순수 데이터만 가져오도록 설정
LINES TERMINATED BY '\n'                 -- 줄바꿈 문자
IGNORE 1 LINES                           -- CSV 파일의 첫 번째 줄(헤더/컬럼명)은 건너뛰기
(trade_date, open_price, high_price, low_price, close_price, adj_close, volume); -- 매핑할 컬럼 순서