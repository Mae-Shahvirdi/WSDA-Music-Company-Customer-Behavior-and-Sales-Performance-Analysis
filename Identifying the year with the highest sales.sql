/*Identifying the year with the highest sales */

SELECT
	strftime('%Y',InvoiceDate) AS Year,
	sum(total) AS "Total Amount Spent"
FROM
	Invoice
Group By
	strftime('%Y',InvoiceDate)
ORDER BY
	sum(total) DESC
