TOTAL ITEMS SOLD PER PRODUCT
SELECT Product, SUM(Quantity) AS total_units_sold
FROM ecommerce_sales
GROUP BY Product
ORDER BY total_units_sold DESC;

COMBINING GROUP BY WITH WHERE....REVENUE PER PRODUCT, ONLY SHIPPED ORDERS
SELECT Product, SUM(TotalPrice) AS shipped_revenue
FROM ecommerce_sales
WHERE OrderStatus = 'Shipped'
GROUP BY Product
ORDER BY shipped_revenue DESC;

USING HAVING TO FILTER GROUP RESULT
PRODUCTS WITH MORE THAN 5 ORDERS 
SELECT Product, COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY Product
HAVING COUNT(*) > 5
ORDER BY total_orders DESC;
