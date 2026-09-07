# superstore-sales-analysis
End-to-end retail sales and profitability pipeline using Excel, MySQL, and Power BI.

Tools & Technologies Used:
1. Microsoft Excel: Initial data exploration, data cleaning, and rapid prototyping using Pivot Tables and 'INDEX/MATCH'. Used INDEX/MATCH to integrate Orders and Returns tables. Used Pivot Tables, Slicers and Charts to show Sales by Category and Sales by Customer segments. Used Conditional Formatting on sales and profit data.
2. MySQL: Engineered a relational database and wrote advanced queries to extract KPIs.
3. Microsoft Power BI: Connected directly to the local MySQL database to build an automated and interactive dashboard for executive stakeholders. Created visualization to show issues in product sub-categories.

Key Business Insights:
1. The "Tables" issue: Despite generating significant revenue, the "Tables" sub-category is operating at a massive loss (-$17,725). Recommendation:  Halt promotions on "Tables" immediately and audit the supply chain costs.
2. Regional Disparities: Western region had the highest sales and profit. The sales strategies and supply chain efficiencies used in the West should be studied and replicated in other regions.
3. Customer Concentration: The top 7 customers drive a disproportionate amount of sales, indicating a strong opportunity for a VIP loyalty program.
 
 Repository Contents:
1. Superstore_EDA.xlsx: The initial Excel exploration file.
2. Superstore_analysis.sql: The SQL queries used to aggregate regional profitability and identify the worst-performing product lines.
3. Superstore_dashboard.pbix: The Power BI dashboard file.
4. Superstore_PowerBI_Screenshot.png: The Power BI dashboard screenshot.
