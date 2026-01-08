USE normalized_db;

-- Customers
INSERT INTO customers (name, email, phone, address)
SELECT DISTINCT
    customer_name,
    customer_email,
    customer_phone,
    customer_address
FROM legacy_db.legacy_orders;

-- Products
INSERT INTO products (product_id, name, category, price)
SELECT DISTINCT
    product_id,
    product_name,
    product_category,
    product_price
FROM legacy_db.legacy_orders;

-- Orders
INSERT INTO orders (order_id, customer_id, order_date)
SELECT DISTINCT
    l.order_id,
    c.customer_id,
    l.order_date
FROM legacy_db.legacy_orders l
JOIN customers c
ON l.customer_email = c.email;

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity)
SELECT
    order_id,
    product_id,
    quantity
FROM legacy_db.legacy_orders;

-- Payments
INSERT INTO payments (order_id, payment_method, payment_status)
SELECT DISTINCT
    order_id,
    payment_method,
    payment_status
FROM legacy_db.legacy_orders;
