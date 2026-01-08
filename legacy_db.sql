CREATE DATABASE legacy_db;
USE legacy_db;

CREATE TABLE legacy_orders (
    order_id INT,
    order_date DATE,
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    customer_phone VARCHAR(15),
    customer_address VARCHAR(255),
    product_id INT,
    product_name VARCHAR(100),
    product_category VARCHAR(50),
    product_price DECIMAL(10,2),
    quantity INT,
    payment_method VARCHAR(50),
    payment_status VARCHAR(20)
);

USE legacy_db;
INSERT INTO legacy_orders VALUES
(1,'2024-01-10','Rahul Sharma','rahul@gmail.com','9876543210','Delhi',
101,'Laptop','Electronics',55000,1,'Card','Paid'),

(2,'2024-01-11','Rahul Sharma','rahul@gmail.com','9876543210','Delhi',
102,'Mouse','Electronics',800,2,'UPI','Paid'),

(3,'2024-01-12','Anita Verma','anita@gmail.com','9123456789','Mumbai',
103,'Chair','Furniture',3000,1,'Cash','Pending'),
(4,'2024-01-13','Rohit Mehta','rohit@gmail.com','9988776655','Bangalore',
104,'Desk','Furniture',7000,1,'Card','Paid'),

(5,'2024-01-14','Neha Kapoor','neha@gmail.com','9090909090','Pune',
105,'Headphones','Electronics',2500,1,'UPI','Paid'),

(6,'2024-01-15','Anita Verma','anita@gmail.com','9123456789','Mumbai',
106,'Table Lamp','Home Decor',1200,2,'Card','Paid'),

(7,'2024-01-16','Amit Singh','amit@gmail.com','9012345678','Hyderabad',
107,'Keyboard','Electronics',1500,1,'UPI','Failed'),

(8,'2024-01-17','Rahul Sharma','rahul@gmail.com','9876543210','Delhi',
108,'Monitor','Electronics',12000,1,'Card','Paid'),

(9,'2024-01-18','Pooja Nair','pooja@gmail.com','8899776655','Kochi',
109,'Sofa','Furniture',35000,1,'NetBanking','Paid'),

(10,'2024-01-19','Vikas Rao','vikas@gmail.com','9345678123','Chennai',
110,'Bookshelf','Furniture',6000,2,'Cash','Pending'),

(11,'2024-01-20','Neha Kapoor','neha@gmail.com','9090909090','Pune',
111,'Smart Watch','Electronics',9000,1,'UPI','Paid'),

(12,'2024-01-21','Amit Singh','amit@gmail.com','9012345678','Hyderabad',
112,'USB Cable','Electronics',300,3,'UPI','Paid');

