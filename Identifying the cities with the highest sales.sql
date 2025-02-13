/* Identifying the cities with the highest sales*/

SELECT
	BillingCity,
	BillingCountry
	sum(total) AS "Total Amount Spent"
FROM
	Invoice
GROUP By
	BillingCity
ORDER BY
	sum(total) DESC
