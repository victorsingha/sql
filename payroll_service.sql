create database payroll_service

select * from sys.databases;

use payroll_service;

select db_name(); 

create table employee_payroll
(
id int identity(1,1) primary key,
name varchar(100) not null,
salary money not null,
start date not null
);

insert into employee_payroll values
('Billi',100000.0,'2018-03-21'),
('Terisa',200000.0,'2019-04-16'),
('Johnathan',300000.0,'2021-01-20');

insert into employee_payroll(salary,start,name) values
(100000.0,'2018-03-21','Mark');

select * from employee_payroll;

select salary from employee_payroll where name='johnathan';

select * from employee_payroll where start between cast('2019-01-01' as date) and GETDATE();

alter table employee_payroll add gender char(1);

update employee_payroll set gender = 'M' where name in ('Billi','Mark','Johnathan');

update employee_payroll set gender = 'F' where name = 'Terisa';

update employee_payroll set gender = 'M' where name = 'Johnathan';

select sum(salary) from employee_payroll where gender = 'M' group by gender;

