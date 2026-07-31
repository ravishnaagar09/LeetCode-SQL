# Write your MySQL query statement below
SELECT p.product_name,
SUM(o.unit) AS unit
FROM Products p
JOIN Orders o
on p.Product_id = o.Product_id
WHERE o.order_date >= '2020-02-01'
AND o.order_date < '2020-03-01'
Group by p.product_id , p.product_name
HAVING SUM(o.unit) >= 100;