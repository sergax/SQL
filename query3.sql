create table if not exists Employee
(Id int, Name varchar(255), Salary int, ManagerId int);

truncate table Employee;
insert into Employee
(Id, Name, Salary, ManagerId)
values
(1, 'Joe', 70000, 3),
(2, 'Henry', 80000, 4),
(3, 'Sam', 60000, null),
(4, 'Max', 90000, null);

select employee.Name as 'Employee'
from Employee as employee
join Employee as manager on  manager.Id = employee.ManagerId
where  employee.Salary > manager.Salary;