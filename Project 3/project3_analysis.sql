Project 3: SQL Data Analysis
 Dataset: ecommerce_sales (decodelabs_project_3 schema)

USE decodelabs_project_3;

1. BASIC SELECT
View all columns and a sample of rows to understand the data
SELECT * FROM ecommerce_sales LIMIT 10;

Select only specific columns of interest
SELECT OrderID, CustomerID, Product, Quantity, UnitPrice, TotalPrice
FROM ecommerce_sales
LIMIT 10;

Get all distinct products sold
SELECT DISTINCT Product
FROM ecommerce_sales;

Get all distinct order statuses
SELECT DISTINCT OrderStatus
FROM ecommerce_sales;


2. FILTERING WITH WHERE
Orders with a total price greater than 300
SELECT OrderID, CustomerID, Product, TotalPrice
FROM ecommerce_sales
WHERE TotalPrice > 300;

Orders that were Cancelled
SELECT OrderID, CustomerID, Product, OrderStatus
FROM ecommerce_sales
WHERE OrderStatus = 'Cancelled';

Orders paid with Credit Card AND over 200 in value
SELECT OrderID, CustomerID, PaymentMethod, TotalPrice
FROM ecommerce_sales
WHERE PaymentMethod = 'Credit Card' AND TotalPrice > 200;

Orders that were either Shipped OR Returned
SELECT OrderID, OrderStatus
FROM ecommerce_sales
WHERE OrderStatus = 'Shipped' OR OrderStatus = 'Returned';


3. SORTING WITH ORDER BY


Highest value orders first
SELECT OrderID, CustomerID, Product, TotalPrice
FROM ecommerce_sales
ORDER BY TotalPrice DESC
LIMIT 10;

Orders sorted by date, oldest first
SELECT OrderID, Date, TotalPrice
FROM ecommerce_sales
ORDER BY Date ASC;


4. GROUP BY + AGGREGATIONS (COUNT, SUM, AVG)

Total number of orders per product
SELECT Product, COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY Product
ORDER BY total_orders DESC;

Total revenue (sum of TotalPrice) per product
SELECT Product, SUM(TotalPrice) AS total_revenue
FROM ecommerce_sales
GROUP BY Product
ORDER BY total_revenue DESC;

Average order value per payment method
SELECT PaymentMethod, AVG(TotalPrice) AS avg_order_value
FROM ecommerce_sales
GROUP BY PaymentMethod
ORDER BY avg_order_value DESC;

Number of orders per order status
SELECT OrderStatus, COUNT(*) AS order_count
FROM ecommerce_sales
GROUP BY OrderStatus
ORDER BY order_count DESC;

Total items sold (sum of Quantity) per product
SELECT Product, SUM(Quantity) AS total_units_sold
FROM ecommerce_sales
GROUP BY Product
ORDER BY total_units_sold DESC;

Combine GROUP BY with WHERE: revenue per product, only Shipped orders
SELECT Product, SUM(TotalPrice) AS shipped_revenue
FROM ecommerce_sales
WHERE OrderStatus = 'Shipped'
GROUP BY Product
ORDER BY shipped_revenue DESC;

-- Use HAVING to filter grouped results: products with more than 5 orders
SELECT Product, COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY Product
HAVING COUNT(*) > 5
ORDER BY total_orders DESC;
