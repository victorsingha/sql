create database address_book_service

select * from sys.databases

use address_book_service

select db_name()

create table contacts
(
id int identity(1,1) primary key,
Firstname varchar(100) not null,
Lastname varchar(100) not null,
Address varchar(100) not null,
City varchar(50) not null,
State varchar(50) not null,
Zip varchar(20) not null,
PhoneNumber varchar(20) not null,
Email varchar(50) not null
)

insert into contacts values
('amar','dsuja','606-3727 Ullamcorper. Street','mumbai','maharastra','766584','7654635245','amar@gmail.com'),
('iris','watson','San Antonio MI 47096','mumbai','maharastra','633564','8576456736','iris@techz.co.in'),
('kyla','waslen','Ap #651-8679 Sodales Av.','mumbai','maharastra','876554','9877687745','kyla@yahoo.com')

select * from contacts
