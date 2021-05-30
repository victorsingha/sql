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


select salary from employee_payroll where name='johnathan';

select * from employee_payroll where start between cast('2019-01-01' as date) and GETDATE();

alter table employee_payroll add gender char(1);

update employee_payroll set gender = 'M' where name in ('Billi','Mark','Johnathan');

update employee_payroll set gender = 'F' where name = 'Terisa';

update employee_payroll set gender = 'M' where name = 'Johnathan';

select sum(salary) from employee_payroll where gender = 'M';

select avg(salary), gender from employee_payroll group by gender;

alter table employee_payroll add phone varchar(15)

alter table employee_payroll add phone varchar(15)

alter table employee_payroll add address varchar(250)

alter table employee_payroll add department varchar(250) not null default 'IT'

sp_rename 'employee_payroll.salary','basic_pay'

alter table employee_payroll add
deductions float,
taxable_pay float,
tax float,
net_pay float

update employee_payroll set department = 'Sales' where name = 'Terisa'

insert into employee_payroll values
('Adam',300000.0,'2020-04-16','F','4234345345','#34 street','Marketing',3000,28000,20000,178000)



SELECT SUM(basic_pay) FROM employee_payroll;
SELECT AVG(basic_pay) FROM employee_payroll;
SELECT COUNT(basic_pay) FROM employee_payroll;

select name from employee_payroll where start between cast('2019-01-01' as date) and GETDATE();

create table basic_pay
(
empID int,
BasicPay float,
Deductions float,
TaxablePay float,
Tax float,
NetPay float,
 FOREIGN KEY (empID) REFERENCES employee_payroll(id) ON DELETE CASCADE
)

select * from employee_payroll;

insert into employee_payroll(name,basic_pay,start,gender) values
('Victor',300000.0,'2020-04-16','F')

select * from basic_pay;

insert into basic_pay(empID,BasicPay,Deductions,TaxablePay,Tax,NetPay) values
(1,46645,35435,354,666,5435)

drop table basic_pay

