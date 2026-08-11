
  
    

create or replace transient table DBT_PRACTICE.STAGING.stg_customers
    
    
    
    
    

    as (select

customer_id,

customer_name,

city,

updated_at

from DBT_PRACTICE.RAW.CUSTOMERS
    )
;


  