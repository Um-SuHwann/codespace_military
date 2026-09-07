CREATE DATABASE IF NOT EXISTS sqldb;
USE sqldb;

DROP TABLE IF EXISTS google_stock_daily;

CREATE TABLE google_stock_daily(
    trade_date    DATE           NOT NULL COMMENT '거래 일자(YYYY-MM-DD)',
    open_price    DECIMAL(10, 6) NOT NULL COMMENT '시가',
    high_price    DECIMAL(10, 4) NOT NULL COMMENT '고가',
    low_price     DECIMAL(10, 4) NOT NULL COMMENT '저가',
    close_price   DECIMAL(10, 4) NOT NULL COMMENT '종가',
    adj_close     DECIMAL(10, 4) NOT NULL COMMENT '수정 종가(배당/액면분할 등이 반영된 종가)',
    volume        BIGINT         NOT NULL COMMENT '거래량',
    created_at    TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '데이터 적재 시각',

    PRIMARY KEY (trade_date),
    CONSTRAINT chk_positive_price CHECK(
        open_price >= 0 AND
        high_price >= 0 AND
        low_price >= 0 AND
        close_price >= 0 AND
        adj_close >= 0
    )
);