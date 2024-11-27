{{ config(materialized='table') }}

SELECT
    DISTINCT
    country
FROM {{ ref('stg_sales') }};
