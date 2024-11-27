{{ config(materialized='table') }}

SELECT
    DISTINCT
    customer_id,
    country
FROM {{ ref('stg_sales') }};
