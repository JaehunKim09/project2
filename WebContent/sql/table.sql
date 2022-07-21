--Table ����
drop table client;
drop table admin;
drop table product;
drop table product_order;
drop table review;
drop table mtm;
--Select
select * from client;
select * from admin;
select * from product;
select * from product_order;
select * from review;
select * from mtm;


--Table
create table client(
id      varchar2(15)  not null primary key, --PK
pw 	    varchar2(20)  not null,
name    varchar2(10)  not null,
email   varchar2(30)  not null,
address varchar2(100) not null,
phone   varchar2(20)  not null
);


create table admin(
admin_id   varchar2(15) not null primary key, --PK
admin_name varchar2(10) not null,
admin_pw   varchar2(20) not null
);


create table product(
pNum        number       not null primary key, --PK
pName       varchar2(30) not null,
pPrice      number       not null,
pImg        varchar2(100),
pShortInfo  varchar2(200),
pDetailInfo varchar2(4000),
pCategory   varchar2(10)
);


create table product_order(
pNum      number        references product(pNum), --FK : product(pNum)
id        varchar2(15)  references client(id), --FK : client(id)
oNum      number        not null primary key, --PK
oPrice    number        not null,
cnt       number        default 1 not null,
oName     varchar2(10)  not null,
oAddress  varchar2(100) not null,
oPhone    varchar2(20),
oDate     TimeStamp     default sysdate not null
);


create table review(
pNum       number       references product(pNum), --FK : product(pNum)
id         varchar2(15) references client(id), --FK : client(id)
oNum       number       references product_order(oNum), --FK : product_order(oNum)
rNum       number       not null primary key, --PK
content    varchar2(1000),
rImg       varchar2(100),
rDate      TimeStamp    default sysdate not null
);


create table mtm(
id      varchar2(15)   references client(id), --FK : client(id)
mNum    number         not null primary key,
title   varchar2(100)  not null,
content varchar2(4000) not null,
--reply   varchar2(4000),
mDate   TimeStamp      default sysdate not null
);
select * from mtm;
select * from mtm where id='cc';
select * from mtm where mNum=3;
update mtm set title='제목수정', content='내용수정'  where mNum=3;

drop sequence pNum_seq;
drop sequence oNum_seq;
drop sequence rNum_seq;
drop sequence mNum_seq;

--Sequence
create sequence pNum_seq start with 1 increment by 1;
create sequence oNum_seq start with 1 increment by 1;
create sequence rNum_seq start with 1 increment by 1;
create sequence mNum_seq start with 1 increment by 1;