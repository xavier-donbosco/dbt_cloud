{{ config(materialized='table', file_format='delta', schema = 'silver') }}

SELECT CAST (id AS Integer), CAST (order_id AS INTEGER), payment_method, CAST (amount AS INTEGER) FROM hive_metastore.dbtdemo.payments;