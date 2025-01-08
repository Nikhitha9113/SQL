create database skyllx;
use skyllx;

create table student(studentid int,Sname varchar(50),email varchar(75),mobile_number int,course_name varchar(40));

show tables;

desc student;

insert into student values (1,"Nikhitha","nikhitha@gmail.com",82770313,"data Analystics");
insert into student values(2,"sana","sana@gmail.com",46678832,"java full stack");
insert into student values(3,"savi","savi@gmail.com",7654396,"data science");
insert into student values(4,"sama","sama@gmail.com",7765496,"python");
insert into student values(5,"kavi","kavi@gmail.com",8875496,"c");

update table student set  address where;
select *from student;
select*from student;

alter table student modify column mobile_number bigint;

desc student;

select * from student;

alter table student add institute varchar(20)

default "skyllx";
 alter table student
 
 drop address;
 
 select * from student;
 
 alter table student 
 add address varchar(50)
 default "skyllx";
 
 desc student;
 
 alter table student
 
 drop institute;
 
 desc student;
 
 select *from student;
 
 update student set address="bellary" where studentID=1;
 
 update student set Sname="sama", studentid=4 where mobile_number=82770313;
 
update student 
set studentid =6
where mobile_number =7765496;

desc student;

alter table student add primary key ( studentid);

select *from student;