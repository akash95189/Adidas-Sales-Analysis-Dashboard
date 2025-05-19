-- Adidas Dataset Analysis
show databases;
create database adidas_db;
use adidas_db;

-- Analyzing Dataset
SELECT * 
FROM adidas;

-- Q1 Max Number of units sold  
SELECT * 
FROM adidas
order by Units_Sold desc 
limit 1;

-- Q2 Count of Products sold by Adidas 
select count(distinct product) as total_product
from adidas;

-- Q3 Count of Products with Product Name 
select distinct product as products, count(product) as total_products 
from adidas
group by Product;

-- Q4 Count of City with City Name where products sold 
select distinct city, count(city) 
from adidas
group by city;

select count(distinct city) as total_cities
from adidas;

-- Q5 Max Profit by Adidas  
select product, max(operating_profit) as max_profit
from adidas
group by 1;

-- Q6 City with Max Unit Sold by Adidas 
select distinct city, max(Units_sold) as Max_Units_Sold
from adidas
group by city; 

-- Q7 Information about Retailers 
select distinct retailer 
from adidas;

-- Q8 Max Sales by Adidas Retailers 
select distinct retailer, max(total_sales) as total_sales
from adidas
group by Retailer;

-- Q9 MAx Price per Unit by Name of Product in Adidas 
select product, max(price_per_unit) as max_price_per_unit
from adidas
group by 1;

-- Q10 Information About the last Products sold by Adidas in Year 2021 
select *
from adidas
where Invoice_Date = "31-12-2021";

-- select year(str_to_date(Invoice_Date,'%d-%m-%Y')) as years
-- from adidas;

-- select *
-- from adidas
-- where year(str_to_date(Invoice_Date,'%d-%m-%Y')) = 2021;


-- Q11 Count on No_of_Products sold on last day of 2021 
select count(*) as No_oF_Products
from adidas
where Invoice_Date = "31-12-2021";

-- Q12 Total count of Sales method each City vise  
select distinct sales_method, city, count(sales_method) as total_methods
from adidas
group by Sales_Method, city
order by sales_method;

-- Q13 Max and Min Operting Margin for each City 
select city, max(Operating_margin), min(Operating_margin)
from adidas
group by city
order by city;