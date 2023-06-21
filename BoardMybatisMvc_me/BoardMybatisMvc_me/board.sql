drop table board;

create table board(
num number(10) primary key,
author varchar2(100) not null,
email varchar2(200) not null,
title varchar2(500) not null,
content varchar2(4000),
password varchar2(12) not null,
writeday date default sysdate,
readcnt number(10) default 0,
rep_root number(10) default 0,
rep_step number(10) default 0,
rep_indent number(10) default 0
);

drop sequence board_seq;
create sequence board_seq start with 1 increment by 1;

insert into board(num, author, email, title, content, password)
values(board_seq.nextval, '뉴비1', '늅1@aaa.com', '테스트1', '테스트와 테스트에 테스트', '1234');
insert into board(num, author, email, title, content, password)
values(board_seq.nextval, '뉴비2', '늅2@aaa.com', '테스트2', '아이고 어저꾸 저쩌구', '4567');
insert into board(num, author, email, title, content, password)
values(board_seq.nextval, '뉴비3', '늅3@aaa.com', '테스트3', '왁자지껄 아리가토 고자이마스', '7890');
insert into board(num, author, email, title, content, password)
values(board_seq.nextval, '뉴비4', '늅4@aaa.com', '테스트4', '오 아름다운 음악이여', '0987');
insert into board(num, author, email, title, content, password)
values(board_seq.nextval, '뉴비5', '늅5@aaa.com', '테스트5', '흐흐헤헤휴후히히', '7654');

commit
--넘버 역순
select * from board ORDER BY num desc; 

select * from board;

update board set title ='테스트5', content = '흐흐헤헤휴후히히' where num= 5;

select * from board where num=5;

delete from board where num=6;