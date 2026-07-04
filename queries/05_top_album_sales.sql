/*
# Top Album Sales Report

Business Question:
Which albums generated the highest revenue?

Skills Demonstrated:
- Complex JOINs
- Revenue calculations
- Aggregation
- Ranking

Business Value:
Helps identify top-selling products.
*/

SELECT TOP 10
       al.Title AS AlbumTitle,
       SUM(il.UnitPrice * il.Quantity) AS AlbumSales
FROM Album al
JOIN Track t
     ON al.AlbumId = t.AlbumId
JOIN InvoiceLine il
     ON t.TrackId = il.TrackId
JOIN Invoice i
     ON il.InvoiceId = i.InvoiceId
GROUP BY al.Title
ORDER BY AlbumSales DESC;
