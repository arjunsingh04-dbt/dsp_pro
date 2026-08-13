



select

customer_id,

customer_name,

city,

updated_at

from DBT_PRACTICE.RAW.CUSTOMERS



where updated_at > (select max(updated_at) from DBT_PRACTICE.SNAPSHOTS.customers_incremental)

