{{ config(materialized='table') }}

WITH raw_data AS (
    SELECT 
        CAST("InvoiceNo" AS STRING) AS invoice_no,
        CAST("StockCode" AS STRING) AS stock_code,
        CAST("Description" AS STRING) AS description,
        CAST("Quantity" AS INTEGER) AS quantity,
        CAST("InvoiceDate" AS TIMESTAMP) AS invoice_date,
        CAST("UnitPrice" AS DECIMAL(10, 2)) AS unit_price,
        CAST("CustomerID" AS STRING) AS customer_id,
        CAST("Country" AS STRING) AS country
    FROM {{ source('raw_data', 'sales_csv') }}
)

SELECT * FROM raw_data;
