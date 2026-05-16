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


--1a)
SELECT MIN(signup_date)
FROM customers;

--1b)
SELECT MIN(signup_date) as EarliestSignupDate
FROM customers;

--1c)
SELECT MIN(signup_date) as EarliestSignupDate, city
FROM customers
GROUP BY city;

----------------------

--2a)
SELECT COUNT(*)
FROM customers;

--2b)
SELECT COUNT(city)
FROM customers;

--2c)
SELECT COUNT(DISTINCT city)
FROM customers;

--2d)
SELECT COUNT(first_name)
FROM customers
WHERE city = 'Chicago';

--2e)
SELECT COUNT(first_name) AS "num people from chicago"
FROM customers
WHERE city = 'Chicago';

--2f)
SELECT COUNT(*) as "Num people in", city
FROM customers
GROUP BY city;

-----------------

--3a)
SELECT SUM(price)
FROM products;

--3b)
SELECT SUM(price) as "Total value of inventory"
FROM products;

--3c)
SELECT SUM(price) as "Total value of electronics"
FROM  products
WHERE category = 'Electronics';

--3d)
SELECT category, SUM(price)
FROM products
GROUP BY category;

--------------------

--4a)
SELECT category, SUM(price) AS "Total Value of All Items", AVG(price) AS "Average Value of All Items"
FROM products
GROUP BY category;

----------------------------

--5a)
SELECT first_name, city
FROM customers
WHERE city IN('Chicago', 'Elgin');

--5b)
SELECT first_name, city
FROM customers
WHERE city NOT IN('Chicago', 'Elgin');

-----------------------------

--6a)
SELECT *
FROM products
WHERE price BETWEEN 100 AND 300;

--6b)
SELECT *
FROM products
WHERE price BETWEEN 50 AND 1000
AND category IN('Electronics', 'Furniture');

------------------------------

--7a)
SELECT customers.first_name, customers.last_name, orders.order_date
FROM customers
INNER JOIN orders ON customers.customer_id = orders.order_id;

--7b)
SELECT customers.first_name, products.product_name, order_items.quantity
from customers
JOIN orders 
ON customers.customer_id = orders.customer_id
JOIN order_items
ON orders.order_id = order_items.order_id
JOIN products
ON order_items.product_id = products.product_id
ORDER BY customers.first_name;