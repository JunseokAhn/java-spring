-- Ajax Test용 테이블
create table usercomment (
	num		number primary key,
	name	varchar2(20) not null,
	text	varchar2(200) not null
);

create sequence usercomment_seq nocache;