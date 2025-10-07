CREATE INDEX IF NOT EXISTS idx_sales_invoice_date ON sales("InvoiceDate");
CREATE INDEX IF NOT EXISTS idx_sales_customer_id  ON sales("CustomerID");
CREATE INDEX IF NOT EXISTS idx_sales_country      ON sales("Country");
