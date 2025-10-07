CREATE TABLE IF NOT EXISTS sales (
  "InvoiceNo"   TEXT,
  "StockCode"   TEXT,
  "Description" TEXT,
  "Quantity"    INTEGER,
  "InvoiceDate" TIMESTAMP,
  "UnitPrice"   NUMERIC,
  "CustomerID"  INTEGER,
  "Country"     TEXT
);
