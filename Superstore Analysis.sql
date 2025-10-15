CREATE DATABASE Superstore_db;
USE superstore_db;
CREATE TABLE stdb(
Order_Id VARCHAR(20),
Order_Date DATE,
Ship_Date DATE,
Ship_Mode VARCHAR(50),
Customer_Name VARCHAR(30),
Segment VARCHAR(20),
Country VARCHAR(20),
City VARCHAR(20),
State VARCHAR(20),
Category VARCHAR(50),
Sub_Category VARCHAR(50),
Sales DECIMAL(10,2),
Quantity INT,
Profit DECIMAL);
SELECT * FROM stdb;
SELECT COUNT(Order_Date) AS Total_Orders FROM stdb;
SELECT DISTINCT(Category) FROM stdb;
SELECT SUM(Sales) AS Total_Sales
FROM stdb;
SELECT SUM(Profit) AS Total_Profit
FROM stdb;
SELECT Category,SUM(Sales) AS Sales_By_Product
FROM stdb
GROUP BY Category
ORDER BY Sales_By_Product;
SELECT City,SUM(Profit) AS Profit_By_Cities
FROM stdb
GROUP BY City
ORDER BY Profit_By_Cities DESC LIMIT 5;
SELECT DATE_FORMAT(Order_Date, '%Y-%M'),
SUM(Profit) AS Total_Profit
FROM stdb
GROUP BY Order_Date
ORDER BY Order_Date;
SELECT Sub_Category,MAX(Profit) AS Max_Profit
FROM stdb
GROUP BY Sub_Category
ORDER BY Sub_Category;
SELECT Sub_Category,MAX(Profit) AS Max_Profit
FROM stdb
GROUP BY Sub_Category
ORDER BY Sub_Category
DESC LIMIT 1;
