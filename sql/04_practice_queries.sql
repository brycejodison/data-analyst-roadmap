--THESE ARE BEING USED IN MY FIRST MOCKUP DASHBOARD

--Total revenue by city
SELECT customers.city, SUM(products.price * order_items.quantity)
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
JOIN order_items 
ON orders.order_id = order_items.order_id
JOIN products
ON products.product_id = order_items.product_id
GROUP BY city;

--Total revenue by category
SELECT products.category, SUM(products.price * order_items.quantity) AS "Rev. by Category"
FROM products
JOIN order_items
ON products.product_id = order_items.product_id
GROUP BY products.category;

--Avg cost of items from category
SELECT category, AVG(price) 
FROM products
GROUP BY category;

--Highest paying customer
SELECT customers.first_name, customers.last_name, SUM(products.price * order_items.quantity) as totalspent
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
JOIN order_items 
ON orders.order_id = order_items.order_id
JOIN products
ON products.product_id = order_items.product_id
GROUP BY customers.first_name, customers.last_name
ORDER BY totalspent DESC
LIMIT 1;