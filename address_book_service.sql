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
('awek','jatt','606-3727 Ullamcorper. Street','pune','maharastra','766584','7654635245','amar@gmail.com'),
('masw','waill','San Antonio MI 47096','pune','maharastra','633564','8576456736','iris@techz.co.in'),
('tazo','ldusla','Ap #651-8679 Sodales Av.','pune','maharastra','876554','9877687745','kyla@yahoo.com')



update contacts set PhoneNumber = '3222344456' where Firstname = 'amar'

delete from contacts where Firstname = 'amar'

select * from contacts where City = 'pune'

select count(Firstname) from contacts where City = 'pune'

select * from contacts order by Firstname

alter table contacts add type varchar(50)

update contacts set type = 'family'

update contacts set type = 'friends' where City = 'mumbai'

select count(Firstname) from contacts where type = 'friends'

create table phone_number
(
contactID int,
phoneNumber varchar(20),
FOREIGN KEY (contactID) REFERENCES contacts(id)
)

create table type
(
contactID int,
type varchar(20),
FOREIGN KEY (contactID) REFERENCES contacts(id)
)

select * from contacts

UPDATE contacts 
   SET Firstname = 'iris', 
       Lastname = 'lr',
	   Address = '#4324 sterer',
	   City = 'pune',
	   State = 'maharastra',
	   Zip = '433243',
	   PhoneNumber = '4343223344',
	   Email = 'iriz@nono.inm'
 WHERE Firstname = 'wannnn'
