use shop;

create table test(id varchar(20), pw varchar(20));

insert into test values ('admin', '1234');
insert into test values ('kkt', '4444');

commit;

show databases;

show tables;

desc test;

select * from test;

drop table member;
create table member(
id varchar(20) primary key,
pw varchar(300) not null, 
email varchar(100) not null);

alter table member add createdDate datetime default now();
alter table member add modifiedDate datetime default now();

create table board (
    id bigint not null auto_increment comment 'PK',
    title varchar(100) not null comment '제목',
    content text not null comment '내용',
    writer varchar(20) not null comment '작성자',
    hits int not null comment '조회 수',
    delete_yn enum('Y', 'N') not null comment '삭제 여부',
    created_date datetime not null comment '생성일',
    modified_date datetime comment '수정일',
    primary key (id)
) comment '게시판';

desc board;

select * from board;
delete from board where id=1;
commit;

drop table member;

create table member (
    id bigint not null auto_increment comment 'PK',
    email varchar(50) not null comment '이메일',
    password varchar(300) not null comment '비밀번호',
    role enum('ROLE_MEMBER', 'ROLE_ADMIN') not null comment '등급',
    created_date datetime default now() comment '가입일',
    modified_date datetime default now() comment '수정일',
    primary key (id)
) comment '회원';

alter table member add column name varchar(50);

select * from member;

update member set role="ROLE_ADMIN" where id=2;
commit;

delete from member where id=4;

alter table user rename user1;

CREATE TABLE user(
id varchar(15),
password varchar(500),
isAccountNonExpired tinyint(1),
isAccountNonLocked tinyint(1),
isCredentialsNonExpired tinyint(1),
isEnabled tinyint(1)
);

desc user;

CREATE TABLE Authority(
username varchar(20),
authority_name varchar(20)
);

CREATE TABLE TB_USER (
  USER_NO int(11) NOT NULL AUTO_INCREMENT COMMENT '사용자번호',
  USER_ID varchar(255) NOT NULL COMMENT '아이디',
  USER_PW varchar(256) DEFAULT NULL COMMENT '비밀번호',
  USER_NAME varchar(255) NOT NULL COMMENT '사용자명',
  USER_AUTH varchar(255) NOT NULL COMMENT '권한',
  APPEND_DATE datetime DEFAULT NULL COMMENT '추가날짜',
  UPDATE_DATE datetime DEFAULT NULL COMMENT '수정날짜',
  PRIMARY KEY (USER_NO)
);

update tb_user set user_auth='ADMIN' where user_no=1;

select * from tb_user;

commit;
