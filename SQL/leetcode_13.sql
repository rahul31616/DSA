-- LeetCode Problem 13: Managers with at Least 5 Direct Reports

# Write your MySQL query statement below
SELECT e.name
FROM Employee e
INNER JOIN Employee m ON e.id = m.managerId
GROUP BY e.id, e.name
HAVING COUNT(*) >= 5;
