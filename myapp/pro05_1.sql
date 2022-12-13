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


