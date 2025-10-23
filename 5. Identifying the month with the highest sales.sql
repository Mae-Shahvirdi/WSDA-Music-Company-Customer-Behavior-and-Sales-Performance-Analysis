/*Identifying the month with the highest sales */

SELECT
	strftime('%m',InvoiceDate) AS Month,
	sum(total) AS "Total Amount Spent"
FROM
	Invoice
Group By
	strftime('%m',InvoiceDate)
ORDER BY
	sum(total) DESC
