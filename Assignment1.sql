SELECT ProductID,
    SUM(Amount) AS TotalSales
FROM sales
GROUP BY ProductID;

SELECT DATE_FORMAT(SaleDate, '%Y-%m') AS SaleMonth,
    SUM(Amount) AS TotalSales
FROM sales
GROUP BY SaleMonth
ORDER BY SaleMonth;

SELECT CustomerID,
    COUNT(SaleID) AS PurchaseCount
FROM sales
GROUP BY CustomerID
HAVING COUNT(SaleID) > 5;


