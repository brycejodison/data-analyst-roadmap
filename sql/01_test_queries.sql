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
-- SELECT city FROM customers;

--1b)
-- SELECT * FROM customers;

--1c)
-- SELECT city, state, signup_date
-- FROM customers;

--1d)
-- SELECT state, city, signup_date
-- FROM customers;


-------------------------

--2a)
-- SELECT DISTINCT city
-- FROM customers;

--2b)
-- SELECT DISTINCT city, state
-- FROM customers;

-------------------------

--3a)
-- SELECT *
-- FROM customers
-- WHERE city = 'Chicago';

--3b)
-- SELECT first_name, last_name
-- FROM customers
-- WHERE city = 'Chicago';

--------------------------
--4a)
-- SELECT *
-- FROM customers
-- ORDER BY signup_date;

--4b)
-- SELECT first_name, last_name
-- FROM customers
-- ORDER BY signup_date;

--4c)
-- SELECT first_name, last_name, city
-- FROM customers
-- ORDER BY city, last_name;

--5a)
-- SELECT *
-- FROM customers
-- WHERE city = 'Chicago' AND first_name LIKE 'B%'

--5b)
-- SELECT *
-- FROM customers
-- WHERE state = 'IL'
-- AND (last_name LIKE 'A%' OR last_name LIKE 'B%');