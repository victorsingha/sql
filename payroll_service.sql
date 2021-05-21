--create database payroll_service

--select * from sys.databases;

--use payroll_service;

--select db_name(); 

--create table employee_payroll
--(
--id int identity(1,1) primary key,
--name varchar(100) not null,
--salary money not null,
--start date not null
--);

insert into employee_payroll values
('Billi',100000.0,'2018-03-21'),
('Terisa',200000.0,'2019-04-16'),
('Johnathan',300000.0,'2021-01-20');

