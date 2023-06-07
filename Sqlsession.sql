create database sqlsession;
use sqlsession;

-- Data Definition language
-- create, alter, drop, truncate

create table customers (
cust_id bigint,
first_name varchar(20),
last_name varchar(20),
country varchar(20),
contact_num bigint);

-- Data Manipulation Language
-- insert,update,delete,select
insert into customers (cust_id, first_name,last_name,country,contact_num) values 
(1,'Mike','Christ','USA',1123456789),(2,'Andy','Hollands','Australia',7418529367);

select * from customers;

insert into customers (cust_id, first_name,last_name,country,contact_num) values 
(3,'Ravi','Vendha','India',2587419363),(4,'Cavy','Sembiane','Pondicherry',15987432567);

select * from customers;

create table student(
sid int,
sname varchar(30),
marks int );
insert into student values(100,'Ram',71);
insert into student values(101,'Raj',75);
insert into student values(102, 'Rajesh' , 65);
insert into student values(103, 'Deepa' , 79);
insert into student values(104, 'Deepak' , 91);
insert into student values(107, 'Animesh' , 82);
insert into student values(108, 'Harish' , 63);
insert into student values(110, 'Hitesh' , 55);
insert into student values(120, 'Sam' , 50);
insert into student values(130, 'Shreya' , 49);
 
 select * from student;
 
 select * from student
 where sid = 102;
 
 select * from student
 where marks = 75;
 
 -- Retional operators/comparison operators
 select * from student where marks >=60;
 
 select * from student 
 where marks between 60 and 75;
 
 select * from student
 where marks >=60 and marks <=75;
 
 -- give the student wjose sid >105 , marks >60
 select * from student 
 where sid>105 and marks >60;

select * from student;

select * from student
where sname like 'R%';
 
 select * from student
 where sname like '_aj';
 
 select * from student
where sname like 'S%';

-- list out the students whose name contians 'e'
select * from student
where sname like '%e';

select * from student
where length(sname)=6;

select * from student
where sid =104 or sid =107 or sid=102;

select * from student
where sid not in (104,107,102);

CREATE TABLE customer (
customer_id integer primary key,
first_name varchar(10) NOT NULL,
last_name varchar(10) NOT NULL,
dob DATE,
phone varchar(12));
Insert into customer (customer_id, first_name,last_name,dob,phone) values(
1,'John','Brown','1965-01-01','800-555-1211');

Insert into customer (customer_id, first_name,last_name,dob,phone) values(
2,'Cynthia','Green','1968-02-05','800-555-1212');

Insert into customer (customer_id, first_name,last_name,dob,phone) values(
3,'Steve','White','1971-03-16','800-555-1213');
 
Insert into customer (customer_id, first_name,last_name,dob,phone) values(
4,'Gail','Black',NULL,'800-555-1214');

Insert into customer (customer_id, first_name,last_name,dob,phone) values(
5,'Doreen','Blue','1970-05-20',NULL);

select * from customer;

-- whose last name starts with 'Bl'
select * from customer where last_name like 'Bl%';
-- whose first name and last name contians 'ee'
select * from customer where first_name like 'ee%' or last_name like 'ee%';
-- whose phone number ends with '12'
select * from customer where phone like '12%';
-- who doesn't have number
select * from customer where phone is NULL;
-- who do not have dob
select * from customer where dob is NULL;
-- lets merge first name and last name together and print customer name
select first_name,last_name, concat(first_name,' ',last_name) as customer_name from customer;

select * from customer;

select * from student;
-- alter
alter table student add city varchar(20);
describe student;

-- update
set sql_safe_updates =0;

update student set city='Chennai';
select * from student;

rollback; -- its isude for DML command  and not for DDL command 

insert into student values (11,'test',80, 'blr');

commit; -- we cannot rollback

select * from student where sid =11;
select * from student;

-- alter drop
alter table student drop city;
select * from student;

rename table student to students;
rename table students to student;


 
 



 