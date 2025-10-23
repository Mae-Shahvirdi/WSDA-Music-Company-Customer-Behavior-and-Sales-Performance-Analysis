/*Year and month analyzed alongside cities and countries */

SELECT
	strftime('%Y',InvoiceDate) AS Year,
	strftime('%m ', InvoiceDate) AS Month,
	sum(total) AS "Total Amount Spent",
	BillingCountry,
	BillingCity
FROM
	Invoice
Group By
	strftime('%Y',InvoiceDate),
	strftime('%m' , InvoiceDate),
	Billingcountry,
	Billingcity
Order By
	Year,
	Month
