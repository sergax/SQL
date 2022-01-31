create table if not exists Employee
(Id int, Salary int);

truncate table Employee;
insert into Employee
(Id, Salary)
values
(1, 100),
(2, 200),
(3, 300);

select Salary as 'SecondHighestSalary'
from Employee
order by Salary desc
limit 1, 1;