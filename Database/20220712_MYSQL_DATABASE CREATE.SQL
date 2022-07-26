﻿-- 데이터베이스 생성하기 (주의) 기본문자셋을 utf8로 지정하지 않으면 한글 깨짐
CREATE DATABASE EZEN_DB DEFAULT CHARACTER SET UTF8;

-- 데이터베이스 목록 확인하기
SHOW DATABASES;

-- 새로생성된 사용자 계정 확인
SELECT USER, HOST FROM USER;

GRANT ALL PRIVILEGES ON EZEN_DB.* TO 'DEV1';
GRANT ALL PRIVILEGES ON EZEN_DB.* TO 'DEV2'@'LOCALHOST';
GRANT ALL PRIVILEGES ON EZEN_DB.* TO 'DEV1'@'%';

-- 변경된 권한 적용하기(메모리에 반영하기)
FLUSH PRIVILEGES;