/* High-level analysis by finding the number of countries and cities */	
SELECT
	count( DISTINCT BillingCountry),
	count(DISTINCT BillingCity)
From
	Invoice

SELECT
	BillingCountry,
	count(DISTINCT BillingCity) AS "Number of Cities"
From
	Invoice
Group By
	BillingCountry
ORDER BY
	count(DISTINCT BillingCity) DESC
