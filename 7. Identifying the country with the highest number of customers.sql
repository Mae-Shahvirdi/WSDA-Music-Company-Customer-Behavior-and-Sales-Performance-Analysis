/* Identifying the country with the highest number of customers */

SELECT
	BillingCountry,
	count(Customerid) AS "Count of Customers"
FROM 
	invoice
Group By
	BillingCountry
Order By
	count(Customerid) DESC
