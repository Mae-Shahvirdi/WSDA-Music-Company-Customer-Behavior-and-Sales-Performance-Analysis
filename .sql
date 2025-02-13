/* High-level analysis by finding the number of countries and cities */	
SELECT
	count( DISTINCT BillingCountry),
	count(DISTINCT BillingCity)
From
	Invoice
