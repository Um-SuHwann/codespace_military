# SQL Study Log
SQL 공부를 정리하는 공간입니다.
---
## Table of Contents
- [01. 기본 조회 및 조건 (SELECT, WHERE)](./01-select-basics/notes.md)

## Quick Cheat Sheet

### sql start
- sudo service mysql start
    - sudo : 관리자 권한으로 실행하겠다는 뜻.
    - service mysql : 내 컴퓨터에 설치된 MySQL 서비스(서버)를 지칭.
    - start : 시작
    컴퓨터 백그라운드에서 돌아가고 있는 MySQL서버 엔진을 작동시킨다는 뜻이다.
- sudo mysql
    관리자 권한으로 MySQL프로그램에 접속하겠다는 뜻.
- source 파일명
    
### table create
DROP TABLE IF EXISTS users;
- 이미 존재하면 삭제하는 구문을 함께 사용하여 연습할 때, 유용함
