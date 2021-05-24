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
('John','6657483510','#435 street 21','IT','M',300000,2000,1000,10000,298000,'2020-04-20','Bangalore','India')

select * from employee_payroll_all