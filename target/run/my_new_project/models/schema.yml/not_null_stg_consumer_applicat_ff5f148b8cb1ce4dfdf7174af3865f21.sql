
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select consumer_application_number
from DSP_PROJ.STAGING.stg_consumer_application_detail
where consumer_application_number is null



  
  
      
    ) dbt_internal_test