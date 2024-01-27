Select * from orders
-- date range
SELECT MIN(date) from orders
SELECT MAX(date) from orders

---extract day of week from date
SELECT [date], order_id,
DATENAME(w, date) AS [day_name]
FROM [Orders];

ALTER TABLE Orders
ADD day_name NVARCHAR(50);

UPDATE Orders
SET day_name = DATENAME(dw, date);

Select * from Orders
----extract month from date
SELECT [date], order_id,
DATENAME(month, date) AS [month_name]
FROM [Orders];

ALTER TABLE Orders
ADD month_name NVARCHAR(50);

UPDATE Orders
SET month_name = DATENAME(MONTH, date);

Select * from Orders

---- extract year from date
SELECT [date], order_id,
DATENAME(YEAR, date) AS [month_name]
FROM [Orders];

ALTER TABLE Orders
ADD year_name NVARCHAR(50)

UPDATE Orders
SET year_name = DATENAME(year, date)

Select * from Orders

----total order count
Select Count(Distinct order_id) FROM Orders

---total orders by year
Select year_name, Count(Distinct order_id) FROM Orders
GROUP BY year_name

--items ordered the most 
SELECT item_name, Count(order_id) AS num_purchases
FROM Orders
GROUP By item_name
ORDER By num_purchases DESC

--sold the most by quantity
SELECT item_name, Sum(quantity) AS total_sold
FROM Orders
GROUP By item_name
ORDER By total_sold DESC

--sold the most by revenue 
SELECT item_name, SUM(transaction_amount) AS total_revenue
FROM Orders
GROUP By item_name
ORDER By total_revenue DESC

--sold the most by category
SELECT item_type, Sum(quantity) AS total_sold
FROM Orders
GROUP By item_type
ORDER By total_sold DESC

--most revenue by category
SELECT item_type, Sum(transaction_amount) AS total_revenue
FROM Orders
GROUP By item_type
ORDER By total_revenue DESC

--most purchases by category
SELECT item_type, Count(order_id) AS num_purchases
FROM Orders
GROUP By item_type
ORDER By num_purchases DESC

SELECT * FROM Orders

--payment type count
Select transaction_type, Count(transaction_type) AS money
FROM Orders
Where transaction_type is NOT NULL
GROUP BY transaction_type

--total transactions
SELECT COUNT(order_id) from orders;

--total revenue
SELECT SUM(transaction_amount) from orders

---avg order value
SELECT AVG(transaction_amount) from orders

--revenue by month and year
SELECT  year_name, month_name, SUM(transaction_amount) AS monthly_revenue
from orders
Group by month_name, year_name

Select * from orders
--- purchases by month and year
SELECT year_name, month_name, Count(order_id) AS num_purchases
from orders
Group by month_name, year_name;

--- sold (qty) by month and year
SELECT year_name, month_name, Sum(quantity) AS total_sold
from orders
Group by month_name, year_name;

-- sold(qty) by time of day
SELECT time_of_sale, Sum(quantity) AS total_sold
FROM Orders
GROUP By time_of_sale
ORDER By time_of_sale 


--- purchases by time of day
SELECT time_of_sale, Count(order_id) AS num_purchases
FROM Orders
GROUP By time_of_sale
ORDER By time_of_sale 

--revenue by time of day
SELECT time_of_sale, SUM(transaction_amount) AS revenue
FROM Orders
GROUP By time_of_sale
ORDER By time_of_sale

--revenue and item name by time day
SELECT time_of_sale, item_name, AVG(transaction_amount) AS avg_revenue
FROM Orders
GROUP By time_of_sale, item_name
ORDER By time_of_sale
