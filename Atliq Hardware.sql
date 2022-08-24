select * from transactions;
select * from customers;
select * from markets;
select * from date;
select * from products;


select count(*) from sales.transactions;

select count(*) from sales.customers;

select * from sales.transactions where market_code = "Mark001";
#Currency which are USD instead of INR
select * from sales.transactions where currency = "USD";

#To get transaction history in year 2020
select  sales.transactions.*, sales.date.* FROM sales.transactions 
INNER JOIN sales.date on 
sales.transactions.order_date=sales.date.date where sales.date.year=2020;

#Revenue generated in year 2020
select SUM(sales.transactions.sales_amount) FROM sales.transactions 
INNER JOIN sales.date on 
sales.transactions.order_date=sales.date.date where sales.date.year=2020;

#Revenue generated in year 2019
select SUM(sales.transactions.sales_amount) FROM sales.transactions 
INNER JOIN sales.date on 
sales.transactions.order_date=sales.date.date where sales.date.year=2019;

#Revenue generated in Chennai in year 2020
select SUM(sales.transactions.sales_amount) FROM sales.transactions 
INNER JOIN sales.date on 
sales.transactions.order_date=sales.date.date where sales.date.year=2020 and sales.transactions.market_code="Mark001";

#Prodct sold in Chennai
select distinct product_code From sales.transactions where market_code = "Mark001";




