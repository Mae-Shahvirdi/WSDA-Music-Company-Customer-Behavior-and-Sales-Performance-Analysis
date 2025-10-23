/* Identifying the cities with the highest number of customers */

SELECT
	BillingCity,
	count(Customerid) AS "Count of Customers"
FROM 
	invoice
Group By
	BillingCity
Order By
	count(Customerid) DESC
	
