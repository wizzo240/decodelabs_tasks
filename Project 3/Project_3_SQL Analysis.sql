USE decodelabs_project_3
SHOW TABLES;
RENAME TABLE `decode labs project 3 dataset for data analytics` TO ecommerce_sales;

SELECT QUERIES
SELECT * FROM ecommerce_sales LIMIT 10;
SELECT COUNT(*) FROM ecommerce_sales;
SELECT DISTINCT Product
FROM ecommerce_sales;
SELECT DISTINCT OrderStatus
FROM ecommerce_sales;

FILTERING WITH WHERE
Orders with a total price greater than 300
SELECT OrderID, CustomerID, Product, TotalPrice
FROM ecommerce_sales
WHERE TotalPrice > 300;


ORDERS THAT WERE CANCELLED
SELECT OrderID, CustomerID, Product, OrderStatus
FROM ecommerce_sales
WHERE OrderStatus = 'Cancelled';

ORDERS PAID WITH CREDIT CARD AND OVER 200 IN VALUE
SELECT OrderID, CustomerID, PaymentMethod, TotalPrice
FROM ecommerce_sales
WHERE PaymentMethod = 'Credit Card' AND TotalPrice > 200;

ORDERS THAT WERE EITHER SHIPPED OR RETURNED
SELECT OrderID, OrderStatus
FROM ecommerce_sales
WHERE OrderStatus = 'Shipped' OR OrderStatus = 'Returned';

SORTING WITH ORDER BY
HIGHEST VALUE ORDERS FIRST 
SELECT OrderID, CustomerID, Product, TotalPrice
FROM ecommerce_sales
ORDER BY TotalPrice DESC
LIMIT 10;

ORDERS SORTED BY DATE, OLDERS FIRST
SELECT OrderID, Date, TotalPrice
FROM ecommerce_sales
ORDER BY Date ASC;

 GROUP BY + AGGREGATIONS (COUNT, SUM, AVG)
Total number of orders per product
SELECT PaymentMethod, AVG(TotalPrice) AS avg_order_value FROM ecommerce_sales GROUP BY PaymentMethod

TOTAL REVENUE (SUM OF TOTALPRICE) PER PRODUCT
SELECT Product, SUM(TotalPrice) AS total_revenue
FROM ecommerce_sales
GROUP BY Product
ORDER BY total_revenue DESC;

AVERAGE ORDER VALUE PER PAYMENT METHOD
SELECT PaymentMethod, AVG(TotalPrice) AS avg_order_value
FROM ecommerce_sales
GROUP BY PaymentMethod
ORDER BY avg_order_value DESC;

NUMBER OF ORDERS PER ORDER STATUSS
SELECT OrderStatus, COUNT(*) AS order_count
FROM ecommerce_sales
GROUP BY OrderStatus
ORDER BY order_count DESC;