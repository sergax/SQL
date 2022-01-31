create table if not exists Person 
(Id int, Email varchar(255));

truncate table Person;
insert into Person 
(Id, Email) 
values 
('1', 'a@b.com'),
('2', 'c@d.com'),
('3', 'a@b.com');

select Email
from Person
group by Email
having count(Email) > 1;