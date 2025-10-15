USE retail_db;
select * from online_retail;
Select * FROM online_retail;
SELECT COUNT(DISTINCT InvoiceNO) AS Total_invoices
FROM online_retail;
SELECT DISTINCT Country 
FROM online_retail
ORDER BY Country;
SELECT COUNT(DISTINCT CustomerID) AS Total_customers
FROM online_retail;
SELECT * FROM online_retail
WHERE CustomerID = 17850;
SELECT * FROM online_retail
WHERE MONTH(InvoiceDate) = 12 AND YEAR(InvoiceDate)=2010;