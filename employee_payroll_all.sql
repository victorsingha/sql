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