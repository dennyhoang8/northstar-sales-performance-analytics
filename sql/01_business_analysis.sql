-- ==========================================
-- BUSINESS ANALYSIS
-- ==========================================

-- ==========================================
-- 1. View the Dataset
-- ==========================================

SELECT *
FROM superstore
LIMIT 10;


-- ==========================================
-- 2. Total Number of Sales Records
-- ==========================================

SELECT COUNT(*) AS TotalRecords
FROM superstore;


-- ==========================================
-- 3. Total Sales
-- ==========================================

SELECT SUM(Sales) AS TotalSales
FROM superstore;


-- ==========================================
-- 4. Total Profit
-- ==========================================

SELECT SUM(Profit) AS TotalProfit
FROM superstore;


-- ==========================================
-- 5. Average Sales per Transaction
-- ==========================================

SELECT AVG(Sales) AS AverageSales
FROM superstore;


-- ==========================================
-- 6. Highest Sale
-- ==========================================

SELECT MAX(Sales) AS HighestSale
FROM superstore;


-- ==========================================
-- 7. Lowest Sale
-- ==========================================

SELECT MIN(Sales) AS LowestSale
FROM superstore;


-- ==========================================
-- 8. Sales by Region
-- ==========================================

SELECT
    Region,
    SUM(Sales) AS TotalSales
FROM superstore
GROUP BY Region
ORDER BY TotalSales DESC;


-- ==========================================
-- 9. Profit by Region
-- ==========================================

SELECT
    Region,
    SUM(Profit) AS TotalProfit
FROM superstore
GROUP BY Region
ORDER BY TotalProfit DESC;


-- ==========================================
-- 10. Sales by Category
-- ==========================================

SELECT
    Category,
    SUM(Sales) AS TotalSales
FROM superstore
GROUP BY Category
ORDER BY TotalSales DESC;


-- ==========================================
-- 11. Profit by Category
-- ==========================================

SELECT
    Category,
    SUM(Profit) AS TotalProfit
FROM superstore
GROUP BY Category
ORDER BY TotalProfit DESC;


-- ==========================================
-- 12. Sales by Sub-Category
-- ==========================================

SELECT
    [Sub-Category],
    SUM(Sales) AS TotalSales
FROM superstore
GROUP BY [Sub-Category]
ORDER BY TotalSales DESC;


-- ==========================================
-- 13. Profit by Sub-Category
-- ==========================================

SELECT
    [Sub-Category],
    SUM(Profit) AS TotalProfit
FROM superstore
GROUP BY [Sub-Category]
ORDER BY TotalProfit DESC;


-- ==========================================
-- 14. Top 10 Customers by Sales
-- ==========================================

SELECT
    [Customer Name],
    SUM(Sales) AS TotalSales
FROM superstore
GROUP BY [Customer Name]
ORDER BY TotalSales DESC
LIMIT 10;


-- ==========================================
-- 15. Top 10 Customers by Profit
-- ==========================================

SELECT
    [Customer Name],
    SUM(Profit) AS TotalProfit
FROM superstore
GROUP BY [Customer Name]
ORDER BY TotalProfit DESC
LIMIT 10;


-- ==========================================
-- 16. Sales by State
-- ==========================================

SELECT
    State,
    SUM(Sales) AS TotalSales
FROM superstore
GROUP BY State
ORDER BY TotalSales DESC;


-- ==========================================
-- 17. Profit by State
-- ==========================================

SELECT
    State,
    SUM(Profit) AS TotalProfit
FROM superstore
GROUP BY State
ORDER BY TotalProfit DESC;


-- ==========================================
-- 18. Top 10 Products by Sales
-- ==========================================

SELECT
    [Product Name],
    SUM(Sales) AS TotalSales
FROM superstore
GROUP BY [Product Name]
ORDER BY TotalSales DESC
LIMIT 10;


-- ==========================================
-- 19. Top 10 Products by Profit
-- ==========================================

SELECT
    [Product Name],
    SUM(Profit) AS TotalProfit
FROM superstore
GROUP BY [Product Name]
ORDER BY TotalProfit DESC
LIMIT 10;


-- ==========================================
-- 20. Average Profit by Region
-- ==========================================

SELECT
    Region,
    AVG(Profit) AS AverageProfit
FROM superstore
GROUP BY Region
ORDER BY AverageProfit DESC;