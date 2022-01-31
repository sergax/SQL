create table if not exists Courses 
(student varchar(255), class varchar(255));

truncate table Courses;
insert into Courses 
(Student, Class) 
values 
('A', 'Math'),
('B', 'English'),
('C', 'Math'),
('D', 'Biology'),
('E', 'Math'),
('F', 'Computer'),
('G', 'Math'),
('H', 'Math'),
('I', 'Math');

select Class
from Courses
group by Class
having count(Class) >= 5;