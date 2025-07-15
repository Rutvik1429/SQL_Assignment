-- Q10. Window functions - Rank, dense_rank, lead and lag

select * from customers;
select * from orders;

-- a) Using customers and orders tables, rank the customers based on their order frequency

select customers.customerName,count(customers.customerNumber) as Order_count, rank() over(order by count(customers.customerNumber) desc) as order_frequency_rank from customers
join orders
on orders.customerNumber = customers.customerNumber
group by customerName;

-- b) Calculate year wise, month name wise count of orders and year over year (YoY) percentage change. Format the YoY values in no decimals and show in % sign.

-- Table : Orders

select * from orders;

select year(orderDate) as year,monthname(orderDate) as Month , count(*) as Total_order,
 CONCAT(
        ROUND(
            (
                (COUNT(*) - LAG(COUNT(*)) OVER (PARTITION BY MONTH(orderDate) ORDER BY YEAR(orderDate))) 
                / LAG(COUNT(*)) OVER (PARTITION BY MONTH(orderDate) ORDER BY YEAR(orderDate))
            ) * 100
        ), '%'
    ) AS yoy_change
    from orders
    group by year(orderDate) , month(orderDate)
    order by month(orderData), year(orderDate);
