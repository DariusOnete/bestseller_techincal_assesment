{{ config(materialized='table') }}

SELECT
    DISTINCT
    stock_code AS product_code,
    description AS product_description
FROM {{ ref('stg_sales') }};
