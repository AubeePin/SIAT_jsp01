--member 테이블 삭제
drop table member;
--member 테이블 생성
create table member(
seq number primary key,
name varchar2(20) not null,
height number(3) not null,
weight number(3) not null,
age number(3),
gender char(3) default '여' check(gender in ('남','여')) 
);

--sequence 삭제
drop sequence mem_seq;
--sequence 생성(100부터 시작한다는뜻 근데 스타트부터 다 지우고 저장하면 디폴트값으로 0부터 시작)
create sequence mem_seq start with 100 increment by 1;

--내용 입력
insert into member(seq, name, height, weight, age)
values(mem_seq.nextval, '유관순', 167, 45, 18);
insert into member(seq, name, height, weight, age)
values(mem_seq.nextval, '유관순2', 157, 65, 19);
insert into member(seq, name, height, weight, age)
values(mem_seq.nextval, '이순신', 177, 65, 20, '남');
insert into member(seq, name, height, weight, age)
values(mem_seq.nextval, '이순신2', 187, 75, 50, '남');

-- 데이터 수정
update MEMBER set name='강감찬' where seq=103;
update MEMBER set name='강감찬', height=170, weight=75, age=25, gender='남' where seq=103;

--삭제 기능
delete from MEMBER where seq=103

--내용 확인
select * from member;

--검색 기능
select * from MEMBER where seq=102;

commit


