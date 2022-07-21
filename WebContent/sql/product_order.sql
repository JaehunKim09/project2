create table product_order(
pNum      number        references product(pNum), --FK : product(pNum)
id        varchar2(15)  references client(id), --FK : client(id)
oNum      number        not null primary key, --PK
oPrice    number        not null,
cnt       number        default 1 not null,
oDate TimeStamp     default sysdate not null,
oName     varchar2(10)  not null,
oAddress  varchar2(100) not null,
oPhone    varchar2(20)
);