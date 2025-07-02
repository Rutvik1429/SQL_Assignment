-- Q4. CONSTRAINTS: Primary, key, foreign key, Unique, check, not null, default
-- Create a new database named and Customers_Orders and add the following tables as per the description
-- a.	Create a table named Customers to store customer information. Include the following columns:

-- customer_id: This should be an integer set as the PRIMARY KEY and AUTO_INCREMENT.
-- first_name: This should be a VARCHAR(50) to store the customer's first name.
-- last_name: This should be a VARCHAR(50) to store the customer's last name.
-- email: This should be a VARCHAR(255) set as UNIQUE to ensure no duplicate email addresses exist.
-- phone_number: This can be a VARCHAR(20) to allow for different phone number formats.

create database Customers_orders;
show databases;
use customers_orders;
create table customers(cus_id int primary key auto_increment,first_name varchar(50) not null,last_name varchar(50) not null , email varchar(255) unique ,phone_number varchar(20));
show tables;

-- b.	Create a table named Orders to store information about customer orders. Include the following columns:
-- order_id: This should be an integer set as the PRIMARY KEY and AUTO_INCREMENT.
-- customer_id: This should be an integer referencing the customer_id in the Customers table  (FOREIGN KEY).
-- order_date: This should be a DATE data type to store the order date.
-- total_amount: This should be a DECIMAL(10,2) to store the total order amount.

-- Constraints:
-- a)	Set a FOREIGN KEY constraint on customer_id to reference the Customers table.
-- b)	Add a CHECK constraint to ensure the total_amount is always a positive value.

create table orders(order_id int primary key auto_increment,cus_id int,foreign key(cus_id)references customers(cus_id),order_date date,total_amount decimal(10,2) check(total_amount > -1));
show tables;
