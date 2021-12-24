--Bbs
--SYSTEM계정에서 작업
DROP USER bbs CASCADE;
CREATE USER bbs IDENTIFIED BY bbs;
GRANT CONNECT, RESOURCE TO bbs;--필수
GRANT CREATE VIEW, CREATE SYNONYM TO bbs;--옵션

--Bbs계정에서 작업(Oracle)
--ch.21
CREATE TABLE member(
	MEMBERID	VARCHAR2(50) primary key,
	NAME	VARCHAR2(50) not null,
	PASSWORD	VARCHAR2(10) not null,
	regdate date not null
);
--ch22
create table article(
    article_no number(2) not null primary key, --게시글 번호
    writer_id VARCHAR2(50) not null, --작성자 id
    writer_name VARCHAR2(50) not null, --작성자 name
    title VARCHAR2(55) not null,
    regdate date not null, --최조 작성 일시
    moddate date not null, --마지막 수정 일시
    read_cnt number(2) -- 조회수
);
CREATE SEQUENCE article_no_seq INCREMENT BY 1 START WITH 1;

--게시글 내용
create table article_content (
    article_no number(2) primary key,--article테이블과 일치
    content long
);


