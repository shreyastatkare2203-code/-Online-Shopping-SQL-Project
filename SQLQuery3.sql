Select * from Customer
Select * from Categories
Select * from payments
Select * from orders
Select * from order_items
Select * from products

---Easy Queries---

-- Q1: Find all customers from Mumbai
Select * from Customer where city = 'Mumbai';

-- Q2: Find all delivered orders
Select * from orders where status = 'Delivered'

-- Q3: Find products with price more than 50000
Select product_name from products where price > 50000;

-- Q4: Find total revenue from all orders
Select sum(total_amount) as Total_Revenue from orders;

-- Q5: Find number of customers per city
SELECT city, COUNT(*) AS total_customers
FROM customer
GROUP BY city
ORDER BY total_customers DESC;

-- ---- MEDIUM QUERIES ----

-- Q6: Find top 3 most expensive products
Select * from (Select *, DENSE_RANK() Over(order By price desc) as rnk from products) as Product_table
where rnk < 4;


-- Q7: Find customers who never placed an order
Select * from Customer c left join orders o on  c.customer_id=o.customer_id
where order_id is Null;

--Another approach--
Select * from Customer where Customer_id = (Select customer_id from Customer where customer_id is Null);

-- Q8: Find most sold product
SELECT product_name
FROM products
WHERE product_id = (
    SELECT TOP 1 product_id
    FROM order_items
    GROUP BY product_id
    ORDER BY SUM(quantity) DESC
);

-- Q9: Find total revenue per category

SELECT c.category_name, SUM(oi.price * oi.quantity) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY revenue DESC;


-- Q10: Find top spending customer
SELECT Top 1 c.first_name, SUM(o.total_amount) AS total_spent
FROM customer c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.first_name
ORDER BY total_spent DESC

 
-- Q11: Find products never ordered
SELECT p.product_name
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;
 
-- Q12: Find monthly revenue
SELECT
    MONTH(order_date) AS month,
    SUM(total_amount) AS monthly_revenue
FROM orders
GROUP BY MONTH(order_date)
ORDER BY month;
 
-- Q13: Find returned orders with customer details
SELECT c.first_name, c.last_name, o.order_id, o.return_date
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
WHERE o.return_date IS NOT NULL;
 

-- Q14: Rank customers by total spending using CTE
WITH customer_spending AS (
    SELECT c.customer_id,
           c.first_name,
           SUM(o.total_amount) AS total_spent
    FROM customer c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.first_name
)
SELECT first_name, total_spent,
DENSE_RANK() OVER (ORDER BY total_spent DESC) AS spending_rank
FROM customer_spending;
 

-- Q15: Find failed payments with order details
SELECT o.order_id, c.first_name, p.payment_type, p.payment_status
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customer c ON o.customer_id = c.customer_id
WHERE p.payment_status = 'failed';
 

-- Q16: Find category with highest revenue using CTE
WITH category_revenue AS (
    SELECT c.category_name,
           SUM(oi.price * oi.quantity) AS revenue,
           DENSE_RANK() OVER (ORDER BY SUM(oi.price * oi.quantity) DESC) AS rnk
    FROM order_items oi
    JOIN products p ON oi.product_id = p.product_id
    JOIN categories c ON p.category_id = c.category_id
    GROUP BY c.category_name
)
SELECT category_name, revenue
FROM category_revenue
WHERE rnk = 1;
 
-- Q17: Find customers who ordered more than average order amount
SELECT c.first_name, o.total_amount
FROM customer c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.total_amount > (SELECT AVG(total_amount) FROM orders);
 
-- Q18: Find most popular payment method
SELECT TOP 1 payment_type, COUNT(*) AS total_payments
FROM payments
GROUP BY payment_type
ORDER BY total_payments DESC


-- Q19: Find low stock products (less than 60 items)
SELECT product_name, stock_quantity
FROM products
WHERE stock_quantity < 60
ORDER BY stock_quantity ASC;
