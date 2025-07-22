-- LeetCode SQL Problem 1: Product Table
-- Query to find products that are both low fat and recyclable

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';
