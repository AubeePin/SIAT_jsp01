select * from tab;

drop table saram;

create table saram(
seq number primary key,
name varchar2(20),
age number(3),
job varchar2(40),
addr varchar2(20),
email varchar2(80)
);

drop sequence seq_saram;

create sequence seq_saram;
select seq_saram.nextval from dual;

insert into saram values (1, '서민경','31','취준생','여주시','사과내놔@naver.com');
insert into saram values (seq_saram.nextval, '김미영','32','바리스타','이천시','딸기내놔@naver.com');
insert into saram values (seq_saram.nextval, '백지혜','31','디자이너','안성시','메론내놔@naver.com');
insert into saram values (seq_saram.nextval, '김진아','32','작가','서울시','망고내놔@naver.com');

select * from saram;
alter table saram add (phone varchar2(40));
update saram set phone ='010-111-111' where seq =1;
update saram set phone ='010-222-222' where seq =2;
update saram set phone ='010-333-333' where seq =3;
update saram set phone ='010-444-444' where seq =4;

select * from saram;

delete from saram where seq = 0;

commit