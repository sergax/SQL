create table Person (
PersonId int auto_increment,
FirstName varchar(255),
LastName varchar(255),
primary key (PersonId)
);

create table Address (
AddressId int auto_increment,
PersonId int,
City varchar(255),
State varchar(255),
primary key (AddressId)
);

truncate table Person;
insert into Person 
(PersonId, LastName, FirstName)
values 
(1,'Wang','Allen');

truncate table Address;
insert into Address 
(AddressId, PersonId, City, State)
values
('1', '2', 'New York City', 'New York');

select FirstName, LastName, City, State
from Address, Person;