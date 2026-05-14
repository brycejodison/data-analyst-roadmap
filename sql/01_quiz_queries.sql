--TABLES--
/*
    CUSTOMERS
    ->customer_id
    ->first_name
    ->last_name
    ->city
    ->state
    ->signup_date

    PRODUCTS
    ->product_id
    ->product_name
    ->category
    ->price

    ORDERS
    ->order_id
    ->customer_id
    ->order_date

    ORDER_ITEMS
    ->order_item_id
    ->order_id
    ->product_id
    ->quantity

*/

--Show all customers
SELECT *
FROM customers;

--Show only first_name, last_name and city from customers
SELECT first_name, last_name, city
FROM customers;

--Show only customers from chicago
SELECT *
FROM customers
WHERE city = 'Chicago';

--Show customers who signed up after 2025-03-01
SELECT *
FROM customers
WHERE signup_date > '2025-03-01';

--Show all products in Electronics category
SELECT *
FROM products 
WHERE category = 'Electronics';

--Show all products that cost more than $50
SELECT * 
FROM  products 
WHERE price > 50;

--Show all products with a price between 20 and 100 using AND
SELECT *
FROM products
WHERE price >= 20 AND price <= 100;

--Show all products that are either furniture or accessories
SELECT * 
FROM products 
WHERE category = 'Furniture' OR category = 'Accessories';

--Show all products ordered from most expensive to cheapest
SELECT * 
FROM products
ORDER BY price DESC;

--Show the 3 cheapest products
SELECT *
FROM products
ORDER BY price
LIMIT 3;

--Show all orders placed on 2025-05-06
SELECT *
FROM orders
WHERE order_date = '2025-05-06';

--Show all orders placed after 2025-05-05
SELECT *
FROM orders
WHERE order_date > '2025-05-05';

--Show all order items where quantity is greater than 2
SELECT *
FROM order_items
WHERE quantity > 2;

--Show all order items where quantity is exactly 1
SELECT *
FROM order_items
WHERE quantity = 1;

--Show all products not in electronics category
SELECT *
FROM products
WHERE NOT category = 'Electronics';

--Bonus: show 5 most recent customers based on signup
SELECT *
FROM customers
ORDER BY signup_date DESC
LIMIT 5;