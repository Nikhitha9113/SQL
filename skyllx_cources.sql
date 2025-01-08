## we are creating all commands in the create a database example pg,students##
create database pg;
use pg;

create table student(sid int,sname varchar(20),sage int,saddress varchar (20));

insert into student values(1,"sana",20,"sp"),(2,"sama",21,"bellary"),(3,"chaitra",22,"banglore");

select*from student;

desc student;

alter table student 
add column food_type varchar(20); 

update student set food_type="upitu" where sid=1;
update student set food_type="dosa" where sid=2;
update student set food_type="edily"where sid=3;

select*from student;

alter table student
drop column food_types;

alter table student
add (city varchar(21) default"banglore",state varchar(21) default"karnataka");

alter table student
add primary key(sid,sname,sage);

desc student;

delete from student
where sid=3;



