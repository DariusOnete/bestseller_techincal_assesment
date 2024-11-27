{{ config(materialized='table') }}

WITH sales_data AS (
    SELECT
        invoice_no,
        stock_code,
        quantity,
        unit_price,
        invoice_date,
        customer_id,
        country
    FROM {{ ref('stg_sales') }}
)

SELECT
    invoice_no,
    stock_code,
    quantity,
    unit_price,
    quantity * unit_price AS total_price,
    invoice_date,
    customer_id,
    country
FROM sales_data;
