--ch21:591,Oracle
--bbs/bbs
--SYSTEM계정에서 작업
DROP USER bbs CASCADE;

CREATE USER bbs IDENTIFIED BY bbs;
GRANT CONNECT, RESOURCE TO bbs;--필수
GRANT CREATE VIEW, CREATE SYNONYM TO bbs;--옵션

create table member(
	memberid varchar2(50) primary key,
	name varchar2(50) not null,
	password varchar2(10) not null,
	regdate date not null
);