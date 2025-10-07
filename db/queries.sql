-- Monthly revenue
SELECT DATE_TRUNC('month', "InvoiceDate") AS month,
       SUM("Quantity" * "UnitPrice") AS revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Top 10 products by units
SELECT "Description" AS product, SUM("Quantity") AS units
FROM sales
GROUP BY "Description"
ORDER BY units DESC
LIMIT 10;

-- Revenue by country
SELECT "Country" AS country, SUM("Quantity" * "UnitPrice") AS revenue
FROM sales
GROUP BY "Country"
ORDER BY revenue DESC;

-- Top 10 customers by spend
SELECT "CustomerID" AS customer_id,
       SUM("Quantity" * "UnitPrice") AS revenue
FROM sales
GROUP BY "CustomerID"
ORDER BY revenue DESC
LIMIT 10;
