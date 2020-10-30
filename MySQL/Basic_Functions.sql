// Creating and Using New Database

create database Students;
use Students;

// Creating Table and declaring its Fields

create table stu_det (
roll_no int not null,
name varchar(100) not null,
date_of_joining date not null,
Fees int not null,
primary key(roll_no));

//Displaying created Table Properties

desc stu_det;

insert into stu_det (roll_no, name, date_of_joining, Fees) values (1, 'Suriya', 12-09-2020, '20000');
insert into stu_det (roll_no, name, date_of_joining, Fees) values (2, 'Vijay', 11-08-2020, '58000');
insert into stu_det (roll_no, name, date_of_joining, Fees) values (3, 'Ajith', 25-05-2020, '36000');
insert into stu_det (roll_no, name, date_of_joining, Fees) values (4, 'Vikram', 30-01-2020, '25000');
insert into stu_det (roll_no, name, date_of_joining, Fees) values (5, 'Dhanush', 23-03-2020, '76000');

//Displaying Created Table with the Records

select * from stu_det;
