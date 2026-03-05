SELECT * FROM snitch.cleaned_fashion_sales1;

-- Top Selling Category
SELECT Product_Category,
SUM(Sales_Amount) AS Total_Sales
FROM snitch.cleaned_fashion_sales1
GROUP BY Product_Category
ORDER BY Total_Sales DESC;

-- City Performance
SELECT City,
SUM(Sales_Amount) AS Revenue
FROM snitch.cleaned_fashion_sales1
GROUP BY City
ORDER BY Revenue DESC;

-- Most Profitable Products
SELECT Product_Name,
SUM(Profit) AS Total_Profit
FROM snitch.cleaned_fashion_sales1
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;

