/*Sales and Customer Distribution by Country, City, Year, and Month */

SELECT
	BillingCountry,
	BillingCity,
	strftime('%Y',InvoiceDate) AS Year,
	strftime('%m ', InvoiceDate) AS Month,
	sum(total) AS "Total Amount Spent",
	count(Distinct CustomerId) AS "Number of Customers"
FROM
	Invoice
Group By
	Billingcountry,
	Billingcity,
	Year,
	Month
Order By
	count(CustomerId)
