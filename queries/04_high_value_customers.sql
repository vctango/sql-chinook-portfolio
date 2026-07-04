/*
# High Value Customers Report

Business Question:
Which customers have spent more than $40?

Skills Demonstrated:
- Aggregations
- SUM
- GROUP BY
- HAVING
- ORDER BY

Business Value:
Identifies high-value customers for targeted marketing.
*/

SELECT CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
       SUM(i.Total) AS TotalSpent
FROM Customer c
JOIN Invoice i
     ON c.CustomerId = i.CustomerId
GROUP BY c.FirstName, c.LastName
HAVING SUM(i.Total) > 40
ORDER BY TotalSpent DESC;
