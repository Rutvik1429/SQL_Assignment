-- Q2. CASE STATEMENTS for Segmentation

-- a. Using a CASE statement, segment customers into three categories based on their country:(Refer Customers table)
-- "North America" for customers from USA or Canada
-- "Europe" for customers from UK, France, or Germany
-- "Other" for all remaining countries

select * from customers;
select customernumber,customername ,
case 
when country = "USA" or country = "canada" then "North America"
when country = "UK"  or country = "france" or country = "Germany" then "Europe"
else "other"
end as "customer_segment"
from customers;

