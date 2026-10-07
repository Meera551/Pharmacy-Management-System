-- Basic SELECT with WHERE
SELECT name, price, quantity_in_stock FROM Medicine WHERE price > 20;

-- COUNT
SELECT COUNT(*) AS Total_Customers FROM Customer;

-- AVG
SELECT AVG(price) AS Average_Price FROM Medicine;

-- JOIN
SELECT Customer.name, Purchase.purchase_id, Purchase.total_amount
FROM Customer JOIN Purchase ON Customer.customer_id = Purchase.customer_id;

-- Subquery
SELECT name, price FROM Medicine
WHERE price > (SELECT AVG(price) FROM Medicine);

-- View
CREATE VIEW Customer_Purchases AS
SELECT Customer.name, Purchase.purchase_id, Purchase.total_amount
FROM Customer JOIN Purchase ON Customer.customer_id = Purchase.customer_id;

SELECT * FROM Customer_Purchases;
