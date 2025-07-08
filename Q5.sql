-- Q5. JOINS
-- a. List the top 5 countries (by order count) that Classic Models ships to. (Use the Customers and Orders tables)

show tables;
select * from customers;
select * from orders;

select country,count(orders.customerNumber) as order_count from customers
join orders
on customers.customerNumber = orders.customerNumber
group by country
order by order_count desc
limit 5;