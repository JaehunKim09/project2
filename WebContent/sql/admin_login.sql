create table admin(
id   varchar2(100) not null primary key, --PK
name varchar2(100) not null,
pw   varchar2(100) not null
);

insert into admin values('admin','관리자1','admin');

select * from admin;

drop table admin;