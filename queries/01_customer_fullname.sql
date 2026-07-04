/*
# Customer Full Name Report

Purpose:
Combine customer first and last names into a single FullName column.

Skills Demonstrated:
- SELECT
- CONCAT
- Column aliases
*/

SELECT CONCAT(FirstName, ' ', LastName) AS FullName,
       Email
FROM Customer;
