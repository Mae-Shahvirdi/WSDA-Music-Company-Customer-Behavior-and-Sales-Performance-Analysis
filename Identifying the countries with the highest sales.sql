/* Identifying the countries with the highest sales */	
SELECT
	BillingCountry,
	count(DISTINCT BillingCity) AS "Number of Cities",
	sum(total) AS "Total Amount Spent"
From
	Invoice
Group By
	BillingCountry
Order by 
	sum(total) DESC
