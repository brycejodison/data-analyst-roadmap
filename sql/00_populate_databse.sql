DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    city TEXT,
    state TEXT,
    signup_date DATE
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    price NUMERIC(10,2)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE
);

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT
);

INSERT INTO customers (first_name, last_name, city, state, signup_date)
VALUES
('Bryan', 'Smith', 'Chicago', 'IL', '2025-01-10'),
('Emma', 'Johnson', 'Naperville', 'IL', '2025-01-15'),
('Michael', 'Brown', 'Aurora', 'IL', '2025-02-01'),
('Sophia', 'Davis', 'Peoria', 'IL', '2025-02-18'),
('Daniel', 'Wilson', 'Rockford', 'IL', '2025-03-05'),
('Olivia', 'Martinez', 'Chicago', 'IL', '2025-03-22'),
('James', 'Anderson', 'Springfield', 'IL', '2025-04-01'),
('Ava', 'Thomas', 'Joliet', 'IL', '2025-04-12'),
('Ethan', 'Taylor', 'Elgin', 'IL', '2025-04-28'),
('Mia', 'Moore', 'Waukegan', 'IL', '2025-05-03');

INSERT INTO products (product_name, category, price)
VALUES
('Wireless Mouse', 'Electronics', 24.99),
('Mechanical Keyboard', 'Electronics', 89.99),
('USB-C Cable', 'Accessories', 12.50),
('Laptop Stand', 'Accessories', 39.99),
('Gaming Monitor', 'Electronics', 249.99),
('Notebook Pack', 'Office Supplies', 15.99),
('Desk Chair', 'Furniture', 199.99),
('Water Bottle', 'Lifestyle', 18.99),
('Bluetooth Speaker', 'Electronics', 59.99),
('LED Desk Lamp', 'Furniture', 45.50);

INSERT INTO orders (customer_id, order_date)
VALUES
(1, '2025-05-01'),
(2, '2025-05-02'),
(3, '2025-05-03'),
(1, '2025-05-05'),
(5, '2025-05-06'),
(6, '2025-05-06'),
(7, '2025-05-07'),
(8, '2025-05-08'),
(9, '2025-05-08'),
(10, '2025-05-09');

INSERT INTO order_items (order_id, product_id, quantity)
VALUES
(1, 1, 2),
(1, 3, 3),
(2, 2, 1),
(2, 4, 1),
(3, 5, 1),
(4, 1, 1),
(4, 2, 1),
(5, 7, 1),
(6, 8, 2),
(7, 6, 5),
(8, 9, 1),
(9, 10, 2),
(10, 3, 4);