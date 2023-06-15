--	private int id;
--	private String author;
--	private String title;
--	private String content;

drop table blog;

create table blog(
id number primary key,
author varchar2(20),
title varchar2(100),
content varchar2(256)
);

drop sequence blog_seq;

create sequence blog_seq start with 100 increment by 1;

select blog_seq.nextval from dual;

-- 주의 SQL 문의 문자열은 홀따음표!
insert into blog(id, author, title, content)
values(blog_seq.nextval, 'HONG', '블로그 테스트1', '블로그 테스트 내용1');
insert into blog(id, author, title, content)
values(blog_seq.nextval, 'KIM', '블로그 테스트2', '블로그 테스트 내용2');
insert into blog(id, author, title, content)
values(blog_seq.nextval, 'LEE', '블로그 테스트3', '블로그 테스트 내용3');



select * from blog;

commit