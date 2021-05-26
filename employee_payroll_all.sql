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

CREATE TABLE department (
    departmentID int identity(1,1) primary key,
    departmentName varchar(200)
);

CREATE TABLE empID_depID (
    empID int,
    departmentID int,
    FOREIGN KEY (empID) REFERENCES employee_payroll_all(EmployeeID),
	FOREIGN KEY (departmentID) REFERENCES department(departmentID)
);

ALTER TABLE employee_payroll_all
DROP COLUMN PhoneNumber;

insert into department values
('IT'),
('Sales'),
('Marketing'),
('HR')

insert into empID_depID values
(1,1),
(2,4),
(3,2),
(3,3)

select * from department
select * from empID_depID
select * from employee_payroll_all

drop table salary

alter table department drop column DepartmentID

create table salary
(
empID int,
BasicPay float,
Deductions float,
TaxablePay float,
Tax float,
NetPay float,
 FOREIGN KEY (empID) REFERENCES employee_payroll_all(EmployeeID)
)

insert into salary values
(1, 500000,3000,6000,4324,450000)

select * from salary

