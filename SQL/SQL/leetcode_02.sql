-- LeetCode Problem 2: Customers Who Never Refer
-- https://leetcode.com/problems/customers-who-never-refer/

# Write your MySQL query statement below
SELECT name
FROM Customer
WHERE referee_id IS NULL OR referee_id != 2;
