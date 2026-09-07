-- Modifying order table names

ALTER TABLE Orders 
RENAME COLUMN `Row ID` TO row_id,
RENAME COLUMN `Order ID` TO order_id,
RENAME COLUMN `Order Date` TO order_date,
RENAME COLUMN `Ship Date` TO ship_date,
RENAME COLUMN `Ship Mode` TO ship_mode,
RENAME COLUMN `Customer ID` TO customer_id,
RENAME COLUMN `Customer Name` TO customer_name,
RENAME COLUMN `Country/Region` TO country_region,
RENAME COLUMN `Postal Code` TO postal_code,
RENAME COLUMN `Product ID` TO product_id,
RENAME COLUMN `Sub-Category` TO sub_category,
RENAME COLUMN `Product Name` TO product_name;

-- Executive KPIs

SELECT 
    ROUND(SUM(Sales), 2) AS total_revenue,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_margin_percentage
FROM Orders;

-- Category Analysis

SELECT 
    Category,
    sub_category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM Orders
GROUP BY Category, sub_category
ORDER BY total_profit ASC
LIMIT 5;

-- Top 10 customers

SELECT 
    customer_id,
    customer_name,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(Sales), 2) AS total_spent,
    ROUND(SUM(Profit), 2) AS profit_generated
FROM Orders
GROUP BY customer_id, customer_name
ORDER BY total_spent DESC
LIMIT 10;

-- Regional Profitability

SELECT 
    Region,
    State,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM Orders
GROUP BY Region, State
ORDER BY total_profit ASC
LIMIT 10;
