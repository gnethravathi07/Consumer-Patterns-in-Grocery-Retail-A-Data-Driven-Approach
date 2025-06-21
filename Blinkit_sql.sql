CREATE DATABASE Grocery;
USE Grocery;

select Count(*) from Blinkit_data;

--  DATA CLEANING

UPDATE blinkit_data
SET Item_Fat_Content = 
    CASE 
        WHEN Item_Fat_Content IN ('LF', 'low fat') THEN 'Low Fat'
        WHEN Item_Fat_Content = 'reg' THEN 'Regular'
        ELSE Item_Fat_Content
    END;

SELECT DISTINCT Item_Fat_Content FROM blinkit_data;

#  KPI's

-- 1.Total Sales

SELECT ROUND(SUM(Sales) / 1000000.0, 2) AS Total_Sales_Million
FROM blinkit_data;

-- 2.Average Sales

SELECT ROUND(AVG(Sales)) AS Avg_Sales
FROM blinkit_data;

-- 3.No of Items

SELECT COUNT(*) AS No_of_Orders
FROM blinkit_data;

# Sales by Categories

-- Total Sales by Fat Content

SELECT Item_Fat_Content, ROUND(SUM(Sales), 2) AS Total_Sales
FROM blinkit_data
GROUP BY Item_Fat_Content;

-- Total Sales by Item Type

SELECT Item_Type, ROUND(SUM(Sales), 2) AS Total_Sales
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

-- Fat Content by Outlet Location

SELECT 
    Outlet_Location_Type,
    ROUND(SUM(CASE WHEN Item_Fat_Content = 'Low Fat' THEN Sales ELSE 0 END), 2) AS Low_Fat,
    ROUND(SUM(CASE WHEN Item_Fat_Content = 'Regular' THEN Sales ELSE 0 END), 2) AS Regular
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Outlet_Location_Type;

-- Sales by Outlet Establishment Year

SELECT Outlet_Establishment_Year, ROUND(SUM(Sales), 2) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;

-- Percentage of Sales by Outlet Size

SELECT 
    Outlet_Size,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND((SUM(Sales) * 100.0 / (SELECT SUM(Sales) FROM blinkit_data)), 2) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

-- Sales by Outlet Location

SELECT Outlet_Location_Type, ROUND(SUM(Sales), 2) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;

-- All Metrics by Outlet Type

SELECT 
    Outlet_Type, 
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(AVG(Sales), 0) AS Avg_Sales,
    COUNT(*) AS No_Of_Items,
    ROUND(AVG(Rating), 2) AS Avg_Rating,
    ROUND(AVG(Item_Visibility), 2) AS Item_Visibility
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;
