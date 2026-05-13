CREATE TABLE test_customers (
    customer_id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    signup_date DATE
);

INSERT INTO test_customers (first_name, last_name, signup_date)
VALUES
('Ana', 'Smith', '2026-01-10'),
('James', 'Brown', '2026-02-15'),
('Mia', 'Johnson', '2026-03-20');

SELECT *
FROM test_customers;