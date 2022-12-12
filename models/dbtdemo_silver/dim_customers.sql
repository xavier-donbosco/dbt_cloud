{{ config(materialized='table', file_format='delta', schema = 'silver') }}

SELECT CAST (id AS Integer), first_name, last_name FROM hive_metastore.dbtdemo.customers;  