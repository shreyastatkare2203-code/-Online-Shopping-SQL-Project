Create Database online_shopping

use online_shopping

---Create Category Table----

USE online_shopping;

-- Drop child tables first!
IF OBJECT_ID('payments', 'U') IS NOT NULL DROP TABLE payments;
IF OBJECT_ID('order_items', 'U') IS NOT NULL DROP TABLE order_items;
IF OBJECT_ID('orders', 'U') IS NOT NULL DROP TABLE orders;
IF OBJECT_ID('products', 'U') IS NOT NULL DROP TABLE products;
IF OBJECT_ID('customers', 'U') IS NOT NULL DROP TABLE customers;
IF OBJECT_ID('categories', 'U') IS NOT NULL DROP TABLE categories;


Create Table Categories(
category_id int Primary Key,
category_name varchar(30),
description varchar(100)
);


---Create Custoner Table---

Create Table Customer(
customer_id int Primary Key,
first_name varchar(10),
last_Name varchar(10),
email varchar(20) Unique,
Phone varchar(10) Unique,
Check(len(Phone) = 10),
city VARCHAR(50),
join_date DATE
);

---Create Product Table---

CREATE TABLE products (
    product_id     INT PRIMARY KEY,
    product_name   VARCHAR(100),
    category_id    INT,
    brand          VARCHAR(50),
    price          DECIMAL(10,2),
    stock_quantity INT,
    description    VARCHAR(200),
    created_at     DATE,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

---Create Table Orders---

CREATE TABLE orders (
    order_id         INT PRIMARY KEY,
    customer_id      INT,
    order_date       DATE,
    return_date      DATE,
    total_amount     DECIMAL(10,2),
    status           VARCHAR(20),
    delivery_address VARCHAR(200),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

---Order item Table---

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id      INT,
    product_id    INT,
    quantity      INT,
    price         DECIMAL(10,2),
    FOREIGN KEY (order_id)   REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

----Create Payments Table

CREATE TABLE payments (
    payment_id     INT PRIMARY KEY,
    order_id       INT,
    payment_type   VARCHAR(20),
    payment_amount DECIMAL(10,2),
    payment_date   DATE,
    payment_status VARCHAR(20),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);