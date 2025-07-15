-- Q13. TRIGGERS

-- Create the table Emp_BIT. Add below fields in it.
-- ●	Name
-- ●	Occupation
-- ●	Working_date
-- ●	Working_hours

create table emp_bit(name varchar(20),occupation varchar(20),working_date date,working_hours int);

-- Insert the data as shown in below query.

INSERT INTO emp_bit VALUES
('Robin', 'Scientist', '2020-10-04', 12),  
('Warner', 'Engineer', '2020-10-04', 10),  
('Peter', 'Actor', '2020-10-04', 13),  
('Marco', 'Doctor', '2020-10-04', 14),  
('Brayden', 'Teacher', '2020-10-04', 12),  
('Antonio', 'Business', '2020-10-04', 11);  




insert into emp_bit values('vishal','business','2020-06-25',-15);

insert into emp_bit values('vishava','Actor','2020-10-05',-20);


-- Create before insert trigger to make sure any new value of Working_hours, if it is negative, then it should be inserted as positive.

-- CREATE DEFINER=`root`@`localhost` TRIGGER `emp_bit_BEFORE_INSERT` BEFORE INSERT ON `emp_bit` FOR EACH ROW BEGIN
-- if new.working_hours < 0 then
-- set new.working_hours = -new.working_hours;
-- end if;
-- END

select * from emp_bit;