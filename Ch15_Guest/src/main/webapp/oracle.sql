--Oracle
--jsp/jsp

CREATE TABLE guestbook_message(
message_id INT not null primary key,
guest_name VARCHAR2(50) not null,
password varchar2(10) not null,
message long not null
);

CREATE SEQUENCE message_id_seq INCREMENT BY 1 START WITH 1;

commit;