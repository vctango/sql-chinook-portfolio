/*
# Customer Invoice Report

Purpose:
Create a simple financial report showing customers and invoice amounts.

Skills Demonstrated:
- JOIN
- Business reporting
- Data presentation
*/

SELECT CONCAT(c.FirstName, ' ', c.LastName) AS FullName,
       i.InvoiceDate,
       i.Total AS InvoiceTotal
FROM Customer c
JOIN Invoice i
     ON c.CustomerId = i.CustomerId;
