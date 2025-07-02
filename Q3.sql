show tables;
select * from orderdetails;
-- Q3. Group By with Aggregation functions and Having clause, Date and Time functions
-- a.	Using the OrderDetails table, identify the top 10 products (by productCode) with the highest total order quantity across all orders.

select productcode,sum(quantityordered) as total_order from orderdetails group by productcode order by total_order desc limit 10;

-- b.	Company wants to analyse payment frequency by month. Extract the month name from the payment date to count the total number of payments for each month and include only those months with a payment count exceeding 20. Sort the results by total number of payments in descending order.  (Refer Payments table).

select * from payments;
select monthname(paymentdate) as payment_month,count(customernumber) as Num_payment from payments group by payment_month having Num_payment > 20 order by Num_payment desc; 