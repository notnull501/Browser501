--ch21:591,Oracle
--bbs/bbs


create table mebmer(
	memberid varchar2(50) primary key,
	name varchar2(50) not null,
	password varchar2(10) not null,
	regdate date not null
);