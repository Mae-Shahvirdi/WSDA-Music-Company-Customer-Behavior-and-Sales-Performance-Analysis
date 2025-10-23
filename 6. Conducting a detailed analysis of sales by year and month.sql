/*Conducting a detailed analysis of sales by year and month
Which year and Month had the highest sales? */

SELECT
	strftime('%Y',InvoiceDate) AS Year,
	strftime('%m ', InvoiceDate) AS Month,
	sum(total) AS "Total Amount Spent"
FROM
	Invoice
Group By
	strftime('%Y',InvoiceDate),
	strftime('%m' , InvoiceDate)
Order By
	Year,
	Month
