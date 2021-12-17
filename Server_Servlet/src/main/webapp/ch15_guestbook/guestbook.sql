--446
jsp/jsp
--   교재(MySQL) => Oracle
create table guestbook_message(
	message_id int not null primary key,
	guest_name varchar2(50) not null,
	password varchar2(10) not null,
	message long not null
);

--auto_increment(mysql) => sequence(oracle)
Create sequence message_id_seq;