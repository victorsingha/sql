use payroll_service

create table employee_payroll_all
(
EmployeeID int identity(1,1) primary key,
EmployeeName varchar(200),
PhoneNumber varchar(200),
Address varchar(200),
Department varchar(200),
Gender char(1),
BasicPay float,
Deductions float,
TaxablePay float,
Tax float,
NetPay float,
StartDate Date,
City varchar(100),
Country varchar(100),
)

insert into employee_payroll_all values
('Teresa','6657483510','#333 street 11','Marketing','F',400000,2000,1000,10000,398000,'2020-04-20','Bangalore','India')

select * from employee_payroll_all

create table department
(
DepartmentName varchar(200),
EmployeeID int
)

insert into department values
('IT',1),
('IT',2),
('Sales',3),
('Marketing',3)

select * from department

alter table department drop column DepartmentID

select * from employee_payroll_all