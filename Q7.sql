-- Q7. DDL Commands: Create, Alter, Rename
-- a. Create table facility. Add the below fields into it.
-- ●	Facility_ID
-- ●	Name
-- ●	State
-- ●	Country


create table facility(facility_id int,name varchar(20),state varchar(20),country varchar(20));
desc facility;

-- i) Alter the table by adding the primary key and auto increment to Facility_ID column.

alter table facility modify column facility_id int primary key auto_increment;

-- ii) Add a new column city after name with data type as varchar which should not accept any null values.

alter table facility add city varchar(20) not null after name;

