{{ config(materialized='table', file_format='delta', schema = 'silver') }}

SELECT CAST (id AS Integer), CAST (user_id AS INTEGER), CAST (order_date AS DATE), status FROM hive_metastore.dbtdemo.orders;  