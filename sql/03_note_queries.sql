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
SELECT customers.first_name, customers.last_name, orders.order_id
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
ORDER BY customers.first_name, customers.last_name;

--1b)
SELECT customers.customer_id, customers.first_name, customers.last_name,
COALESCE(SUM(order_items.quantity), 0) AS "Total items ordered"
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
LEFT JOIN order_items
ON orders.order_id = order_items.order_id
GROUP BY customers.customer_id;

--1c)
SELECT customers.first_name, customers.last_name, orders.order_id
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.customer_id IS NULL;

--4a)
SELECT category, SUM(price)
FROM products
GROUP BY category
HAVING SUM(price) > 50;

--4b)
SELECT customers.customer_id, customers.first_name, customers.last_name, SUM(order_items.quantity)
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
JOIN order_items
ON orders.order_id = order_items.order_id
GROUP BY customers.customer_id
HAVING SUM(order_items.quantity) > 2;