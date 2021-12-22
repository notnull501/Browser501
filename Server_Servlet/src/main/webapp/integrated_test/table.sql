--포함파일 : table.sql, loginForm.jsp, login.jsp, join.java, Main.java, Member.java, MemberDao.java

--jsp파일은 webapp 폴더에 존재했을 때 기준으로
--http://localhost:8080/Server_Servlet/loginForm.jsp 에서
--http://localhost:8080/Server_Servlet/join.do
--http://localhost:8080/Server_Servlet/main.do 와 같이 연결

--Oracle DB는 jsp/jsp의 Member2 테이블 사용


--1. table 생성(아래와 같이 구성된 테이블을 생성하시오)
CREATE table member2(           -- 1) table명 member2,
id varchar2(12) primary key,    -- 2) id 문자 12자 primary key
password varchar2(12),          -- 3) password 문자 12
name varchar2(20),              -- 4) name 문자 20
address varchar2(50),           -- 5) address 문자 50
tel varchar2(20),				-- 6) tel 문자  20
reg_date date                   -- 7) reg_date 날짜형
);

-- 테스트용 값
-- INSERT into member2 values ('id1234', 'pass1234', '홍길동', '서울시','010-1234-2345', sysdate);