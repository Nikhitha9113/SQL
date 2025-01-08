create database Inventory_system;
use inventory_system;

create table product(pid int primary key,pproductname varchar(30),pcategory varchar(20),pprice decimal(7,2),
pstockquality int);

select*from product;
insert into product values (101,"Wireless Mouse","Electronics",	30.0,120);
insert into product values (102,"yoga Mat","Sports & Fitness",19.0,75);
insert into product values (103,"Ceramic Mug","Kitchenware",8.99,200);
insert into product values (104,"Bluetooth Speaker","Electronics",45.99,50);
insert into product values (107,"Hardcover Journal","Stationery",12.9,150);

desc product;

alter table product modify pprice decimal(7,2);

INSERT INTO Product (pid ,pproductname,pcategory,pprice,pstockquality)VALUES (108,"Bluetooth Speaker","Electronics",45.99,50);
select*from product;

UPDATE order1 SET Stock = Stock- WHERE PID = 1;


create table order1 (orderid int primary key,orderdate date,customerid int,totalAmount decimal(5,2));

insert into order1 values(201,'2024-12-20',233987,8.99);
insert into order1 values(202,'2024-12-21',233988,9.99);
insert into order1 values(203,'2024-12-22',233989,10.99);
insert into order1 values(204,'2024-12-23',233910,11.99);
insert into order1 values(205,'2024-12-24',233911,12.99);

desc order1;
select*from order1;


create table orderdetails(orederid int primary key,orderid int,productid int,quantity int,price decimal (7,2));
 select * from orderdetails;
 insert into orderdetails values(301,98766432,1,1,22.33);
  insert into orderdetails values(302,98766431,2,1,22.33);
  insert into orderdetails values(303,98766432,3,1,20.33);
  insert into orderdetails values(304,98766433,4,1,22.33);
  insert into orderdetails values(305,98766435,5,1,19.33);

desc orderdetails;
alter table orderdetails rename column orederid to orderDetailId;

select*from orderdetails;
