
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  

select * from DSP_PROJ.STAGING.stg_erp_budget_workflow_amount where je_return_amount <=0


  
  
      
    ) dbt_internal_test