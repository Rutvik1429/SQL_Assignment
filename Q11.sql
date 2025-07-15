-- Q11.Subqueries and their applications

-- a. Find out how many product lines are there for which the buy price value is greater than the average of buy price value. Show the output as product line and its count.

select * from products;

select productline,count(*) as Total from products where buyPrice > (select avg(buyprice) as avgprice from products) group by productline order by Total desc; 