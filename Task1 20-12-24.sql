create database employee;
use employee;

create table employee_table(Emp_ID int,Emp_name varchar(30),emp_department varchar(20));

insert into employee_table values(1,"keerthi","HR"),(2,"vinod","IT"),(3,"shima","Marketing"),(4,"Niki","Infrastructures"),
(5,"Hani","Infrastructures"),(6,"pavi","HR"),(7,"rekha","IT"),(8,"sama","IT"),(9,"dikshit","HR"),(10,"Aishu","IT");

select*from employee_table;

alter table employee_table add column joining_date date;
alter table employee_table

add column salary int;

select*from employee_table;
alter table employee_table;

update employee_table  
set salary=25000 
where emp_id in (2,4,6,8);
select*from employee_table;

update employee_table  
set salary=30000 
where emp_id in (1,3,5,7);

update employee_table  
set salary=50000 
where emp_id in (9,10);

select
emp_name,salary
from employee_table
order by salary desc
limit 5;

update employee_table 
set joining_date ="2003-03-05"
where emp_id=4

update employee_table 
set joining_date ="2001-01-01"
where emp_id=1

update employee_table 
set joining_date ="2002-01-01"
where emp_id=2

update employee_table 
set joining_date ="2002-03-05"
where emp_id=3

update employee_table
set joining_date="2000-03-02"
where emp_id=5

update employee_table
set joining_date="2001-02-02"
where emp_id=6

update employee_table
set joining_date="2001-02-02"
where emp_id in(7,8,9)

update employee_table
set joining_date="2001-02-02"
where emp_id in (10)

select*from employee_table





