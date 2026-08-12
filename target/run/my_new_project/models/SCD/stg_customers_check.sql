
  create or replace   view DBT_PRACTICE.SNAPSHOTS.stg_customers_check
  
  
  
  
  as (
    select * from 
DBT_PRACTICE.RAW.CUSTOMERS_CHECK
  );

