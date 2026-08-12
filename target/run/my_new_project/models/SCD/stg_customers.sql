
  create or replace   view DBT_PRACTICE.SNAPSHOTS.stg_customers
  
  
  
  
  as (
    select

customer_id,

customer_name,

city,

updated_at

from DBT_PRACTICE.RAW.CUSTOMERS
  );

