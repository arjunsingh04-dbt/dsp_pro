
  
    

create or replace transient table DBT_PRACTICE.STAGING.stg_customers_check
    
    
    
    
    

    as (select * from 
DBT_PRACTICE.RAW.CUSTOMERS_CHECK
    )
;


  