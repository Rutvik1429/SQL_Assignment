-- Q1. SELECT clause with WHERE, AND, DISTINCT, Wild Card (LIKE)

-- a.	Fetch the employee number, first name and last name of those employees who are working as Sales Rep reporting to employee with employeenumber 1102 (Refer employee table)

select * from employees;
select employeenumber,firstname,lastname from employees where jobtitle = "sales rep" and reportsto = 1102;

-- b.	Show the unique productline values containing the word cars at the end from the products table.

select * from products;
select distinct(productline) from products where productline like "%cars";
