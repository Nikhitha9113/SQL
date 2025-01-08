create database smdc;
use smdc;

Create table BCA( sid int,sname varchar(20),saddress varchar (20));
insert into  BCA values (701,"Vinod","Chanahal");
insert into  BCA values (702,"Niki","Gajiginahal");

SElect*from bca;

Desc BCA;

Alter table bca modify column sid bigint;

DEsc bca;

select*from bca;

Alter table bca add smobile int ;
alter table bca

drop sid;
select*from bca;

alter table bca
add address varchar(20);

alter table bca
drop column smobile;

select*from bca;

alter table bca
drop column address;

alter table bca
add age tinyint default 20
after saddress;

select*from bca;

alter table bca
add (city varchar(20) default "banglore",
state varchar (20) default "karnataka");

select*from bca;

alter table bca  add (id int);


select*from bca;