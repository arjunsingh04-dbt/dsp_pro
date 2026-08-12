
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  

select * from DSP_PROJ.STAGING.stg_erp_budget_workflow_amount where TOTAL_SUPV_AMOUNT <=0


  
  
      
    ) dbt_internal_test