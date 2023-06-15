--	private int id;
--	private String name;
--	private String email;
--	private String phone;

drop table member;

create table member(
id number primary key,
name varchar2(20),
email varchar2(20),
phone varchar2(50)
);

drop sequence member_seq;

create sequence member_seq start with 1 increment by 1;

select * from tab;

select member_seq.nextval from dual;

insert into member(id, name, email, phone)
values(member_seq.nextval,'홍길동','HONG@AAA','010-000-0000');
insert into member(id, name, email, phone)
values(member_seq.nextval,'우리','uri@AAA','010-111-1111');
insert into member(id, name, email, phone)
values(member_seq.nextval,'나라','nara@AAA','010-222-2222');


select * from MEMBER;

commit


