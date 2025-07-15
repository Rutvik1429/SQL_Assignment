select * from customers;
select * from payments;

call classicmodels.Get_country_payments(2003, 'France');

-- Stored Procedures

-- CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_country_payments`(in in_year int ,in_country varchar(20))
-- BEGIN
-- select  in_year , in_country , concat(round(sum(p.amount)/1000), 'k') as Total_amount
-- from customers c
-- join payments p 
-- on c.customerNumber = p.customerNumber
-- where year(p.paymentDate) = in_year and c.country = in_country;
-- END