
--포함파일 : table.sql, loginform.jsp, join.jsp, main.jsp, Member.java, MemberDao.java
--java package는 serverprog_test으로 설정 (serverprog_test.Member, serverprog_test.MemberDao에 위치)
--Oracle DB는 jsp/jsp의 Member1 테이블 사용



--1. table 생성(아래와 같이 구성된 테이블을 생성하시오)
CREATE table member1(           -- 1) table명 member1,
id varchar2(12) primary key,    -- 2) id 문자 12자 primary key
password varchar2(20),          -- 3) password 문자 (문제에 없어서 20byte로 지정)
name varchar2(12),              -- 4) name 문자 12
reg_date date                   -- 5) reg_date 날짜형
);
