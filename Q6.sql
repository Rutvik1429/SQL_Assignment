-- Q6. SELF JOIN
-- a. Create a table project with below fields.
-- ●	EmployeeID : integer set as the PRIMARY KEY and AUTO_INCREMENT.
-- ●	FullName: varchar(50) with no null values
-- ●	Gender : Values should be only ‘Male’  or ‘Female’
-- ●	ManagerID: integer 

create table project(employeeid int primary key auto_increment,fullname varchar(50) not null,gender enum("Male","Female"),managerid int);
insert into project values(1,"pranaya","1",3);
insert into project values(2,"priyanka","2",1),(3,"preety","2",null),(4,"anurag","1",1),(5,"sambit","2",1),(6,"rajesh","2",3),(7,"hina","1",3);
select * from project;

select p1.fullname as manager_name , p2.fullname as emp_name 
from project as p1, project as p2
where p1.employeeid = p2.managerid
order by manager_name;
