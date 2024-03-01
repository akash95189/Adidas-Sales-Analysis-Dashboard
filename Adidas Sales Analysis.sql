-- Adidas Dataset Analysis

-- Having Overview on Whole Dataset
SELECT * 
FROM adidas.`adidas datasets`;

-- Max Number of units sold  
SELECT * 
FROM adidas.`adidas datasets`
order by Units_Sold desc 
limit 1;

-- Count of Products sold by Adidas 
select count(distinct product) 
from adidas.`adidas datasets`;

-- Count of Products with Product Name 
select distinct product, count(product) 
from adidas.`adidas datasets`
group by Product;

-- Count of City with City Name where products sold 
select distinct city, count(city) 
from adidas.`adidas datasets`
group by city;

select count(distinct city) 
from adidas.`adidas datasets`;

-- Max Profit by Adidas  
select max(operating_profit) 
from adidas.`adidas datasets`;

-- City with Max Unit Sold by Adidas 
select distinct city, max(Units_sold) as Max_Units_Sold
from adidas.`adidas datasets`
group by city; 

-- Information about Retailers 
select distinct retailer 
from adidas.`adidas datasets`;

-- Max Sales by Adidas Retailers 
select distinct retailer, max(total_sales)
from adidas.`adidas datasets`
group by Retailer;

-- MAx Price per Unit by Name of Product in Adidas 
select max(price_per_unit) 
from adidas.`adidas datasets`;

select product, max(price_per_unit) 
from adidas.`adidas datasets`
group by product;

-- Information About the last Products sold by Adidas in Year 2021 
select * 
from adidas.`adidas datasets`
order by Invoice_Date desc
limit 1;

select *
from adidas.`adidas datasets`
where Invoice_Date = "31-12-2021";

-- Count on No_of_Products sold on last day of 2021 
select count(*) as No_oF_Products
from adidas.`adidas datasets`
where Invoice_Date = "31-12-2021";

-- Total count of Sales method each City vise  
select distinct sales_method, city, count(sales_method) as total_methods
from adidas.`adidas datasets`
group by Sales_Method, city
order by sales_method;

-- Max and Min Operting Margin for each City 
select city, max(Operating_margin), min(Operating_margin)
from adidas.`adidas datasets`
group by city
order by city;