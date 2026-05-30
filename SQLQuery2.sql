use online_shopping

-- Categories--
INSERT INTO categories VALUES (1, 'Electronics',  'Mobile, Laptop, TV');
INSERT INTO categories VALUES (2, 'Clothing',      'Shirts, Pants, Dresses');
INSERT INTO categories VALUES (3, 'Food',          'Groceries, Snacks');
INSERT INTO categories VALUES (4, 'Books',         'Fiction, Non-Fiction');
INSERT INTO categories VALUES (5, 'Sports',        'Cricket, Football, Gym');

-- Customers
INSERT INTO customer VALUES (1,  'Rahul',  'Sharma',  'rahul@gmail.com',  '9876543210', 'Mumbai',    '2022-01-15');
INSERT INTO customer VALUES (2,  'Priya',  'Patel',   'priya@gmail.com',  '9876543211', 'Delhi',     '2022-03-20');
INSERT INTO customer VALUES (3,  'Amit',   'Singh',   'amit@gmail.com',   '9876543212', 'Pune',      '2022-05-10');
INSERT INTO customer VALUES (4,  'Ravi',   'Kumar',   'ravi@gmail.com',   '9876543213', 'Mumbai',    '2022-07-05');
INSERT INTO customer VALUES (5,  'Neha',   'Gupta',   'neha@gmail.com',   '9876543214', 'Delhi',     '2022-09-22');
INSERT INTO customer VALUES (6,  'Karan',  'Mehta',   'karan@gmail.com',  '9876543215', 'Bangalore', '2023-01-30');
INSERT INTO customer VALUES (7,  'Pooja',  'Shah',    'pooja@gmail.com',  '9876543216', 'Chennai',   '2023-03-14');
INSERT INTO customer VALUES (8,  'Suresh', 'Verma',   'suresh@gmail.com', '9876543217', 'Pune',      '2023-05-18');
INSERT INTO customer VALUES (9,  'Anjali', 'Joshi',   'anjali@gmail.com', '9876543218', 'Mumbai',    '2023-07-25');
INSERT INTO customer VALUES (10, 'Vikram', 'Rao',     'vikram@gmail.com', '9876543219', 'Hyderabad', '2023-09-01');

-- Products
INSERT INTO products VALUES (1,  'iPhone 15',          1, 'Apple',    79999.00, 50,  'Latest Apple iPhone',        '2023-01-01');
INSERT INTO products VALUES (2,  'Samsung Galaxy S23', 1, 'Samsung',  69999.00, 80,  'Samsung flagship phone',     '2023-01-01');
INSERT INTO products VALUES (3,  'Nike T-Shirt',       2, 'Nike',      999.00,  200, 'Comfortable cotton tshirt',  '2023-01-01');
INSERT INTO products VALUES (4,  'Levi Jeans',         2, 'Levis',    2999.00,  150, 'Classic blue jeans',         '2023-01-01');
INSERT INTO products VALUES (5,  'Laptop Dell',        1, 'Dell',     55000.00, 30,  'Dell Inspiron 15',           '2023-01-01');
INSERT INTO products VALUES (6,  'Atomic Habits',      4, 'Penguin',    499.00, 500, 'Best selling book',          '2023-01-01');
INSERT INTO products VALUES (7,  'Cricket Bat',        5, 'SS',        2500.00, 100, 'Professional cricket bat',   '2023-01-01');
INSERT INTO products VALUES (8,  'Rice 5kg',           3, 'India Gate', 350.00, 1000,'Premium basmati rice',       '2023-01-01');
INSERT INTO products VALUES (9,  'OnePlus 11',         1, 'OnePlus',  56999.00, 60,  'OnePlus flagship phone',     '2023-01-01');
INSERT INTO products VALUES (10, 'Adidas Shoes',       5, 'Adidas',   4999.00,  120, 'Running shoes',              '2023-01-01');
 

-- Orders
INSERT INTO orders VALUES (1,  1, '2024-01-01', NULL,         80998.00, 'delivered', 'Mumbai');
INSERT INTO orders VALUES (2,  2, '2024-01-05', NULL,          3998.00, 'delivered', 'Delhi');
INSERT INTO orders VALUES (3,  3, '2024-01-10', NULL,         55000.00, 'delivered', 'Pune');
INSERT INTO orders VALUES (4,  4, '2024-01-15', NULL,          2500.00, 'shipped',   'Mumbai');
INSERT INTO orders VALUES (5,  5, '2024-01-20', NULL,         69999.00, 'delivered', 'Delhi');
INSERT INTO orders VALUES (6,  1, '2024-02-01', NULL,           999.00, 'delivered', 'Mumbai');
INSERT INTO orders VALUES (7,  2, '2024-02-05', '2024-02-10',  2999.00, 'returned',  'Delhi');
INSERT INTO orders VALUES (8,  6, '2024-02-10', NULL,         56999.00, 'delivered', 'Bangalore');
INSERT INTO orders VALUES (9,  7, '2024-02-15', NULL,           499.00, 'pending',   'Chennai');
INSERT INTO orders VALUES (10, 8, '2024-02-20', NULL,          4999.00, 'delivered', 'Pune');
INSERT INTO orders VALUES (11, 3, '2024-03-01', NULL,          2500.00, 'delivered', 'Pune');
INSERT INTO orders VALUES (12, 9, '2024-03-05', NULL,         79999.00, 'shipped',   'Mumbai');
INSERT INTO orders VALUES (13, 10,'2024-03-10', NULL,          1349.00, 'delivered', 'Hyderabad');
INSERT INTO orders VALUES (14, 4, '2024-03-15', NULL,         55000.00, 'pending',   'Mumbai');
INSERT INTO orders VALUES (15, 5, '2024-03-20', NULL,          2999.00, 'delivered', 'Delhi');

-- Order Items
INSERT INTO order_items VALUES (1,  1,  1,  1, 79999.00);
INSERT INTO order_items VALUES (2,  1,  2,  1, 69999.00);
INSERT INTO order_items VALUES (3,  2,  3,  2,   999.00);
INSERT INTO order_items VALUES (4,  2,  4,  1,  2999.00);
INSERT INTO order_items VALUES (5,  3,  5,  1, 55000.00);
INSERT INTO order_items VALUES (6,  4,  7,  1,  2500.00);
INSERT INTO order_items VALUES (7,  5,  2,  1, 69999.00);
INSERT INTO order_items VALUES (8,  6,  3,  1,   999.00);
INSERT INTO order_items VALUES (9,  7,  4,  1,  2999.00);
INSERT INTO order_items VALUES (10, 8,  9,  1, 56999.00);
INSERT INTO order_items VALUES (11, 9,  6,  1,   499.00);
INSERT INTO order_items VALUES (12, 10, 10, 1,  4999.00);
INSERT INTO order_items VALUES (13, 11, 7,  1,  2500.00);
INSERT INTO order_items VALUES (14, 12, 1,  1, 79999.00);
INSERT INTO order_items VALUES (15, 13, 6,  1,   499.00);
INSERT INTO order_items VALUES (16, 13, 8,  2,   350.00);
INSERT INTO order_items VALUES (17, 14, 5,  1, 55000.00);
INSERT INTO order_items VALUES (18, 15, 4,  1,  2999.00);

-- Payments
INSERT INTO payments VALUES (1,  1,  'UPI',        80998.00, '2024-01-01', 'success');
INSERT INTO payments VALUES (2,  2,  'Card',         3998.00, '2024-01-05', 'success');
INSERT INTO payments VALUES (3,  3,  'NetBanking',  55000.00, '2024-01-10', 'success');
INSERT INTO payments VALUES (4,  4,  'COD',          2500.00, '2024-01-15', 'success');
INSERT INTO payments VALUES (5,  5,  'UPI',         69999.00, '2024-01-20', 'success');
INSERT INTO payments VALUES (6,  6,  'Card',           999.00, '2024-02-01', 'success');
INSERT INTO payments VALUES (7,  7,  'UPI',          2999.00, '2024-02-05', 'success');
INSERT INTO payments VALUES (8,  8,  'NetBanking',  56999.00, '2024-02-10', 'success');
INSERT INTO payments VALUES (9,  9,  'COD',           499.00, '2024-02-15', 'pending');
INSERT INTO payments VALUES (10, 10, 'UPI',          4999.00, '2024-02-20', 'success');
INSERT INTO payments VALUES (11, 11, 'Card',         2500.00, '2024-03-01', 'success');
INSERT INTO payments VALUES (12, 12, 'UPI',         79999.00, '2024-03-05', 'success');
INSERT INTO payments VALUES (13, 13, 'COD',          1349.00, '2024-03-10', 'success');
INSERT INTO payments VALUES (14, 14, 'NetBanking',  55000.00, '2024-03-15', 'failed');
INSERT INTO payments VALUES (15, 15, 'Card',         2999.00, '2024-03-20', 'success');
