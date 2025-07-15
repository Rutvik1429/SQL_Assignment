-- Q12. ERROR HANDLING in SQL

--       Create the table Emp_EH. Below are its fields.
-- ●	EmpID (Primary Key)
-- ●	EmpName
-- ●	EmailAddress



create table Emp_EH(empid int primary key,empname varchar(20),emailaddress varchar(20));

-- Create a procedure to accept the values for the columns in Emp_EH. Handle the error using exception handling concept. 
-- Show the message as “Error occurred” in case of anything wrong.

-- CREATE DEFINER=`root`@`localhost` PROCEDURE `error_hendlling`(Emp_id int,Empname varchar(20),Emailaddress varchar(20))
-- BEGIN
-- declare exit handler for sqlexception
-- begin
--   select "Error Occurred" as Message;
-- end;
-- insert into Emp_EH(empid,empname,emailaddress)
-- values(Emp_id,Empname,Emailaddress);
-- select "employee inserted successfully" as Message;
-- END