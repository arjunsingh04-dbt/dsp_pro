-- back compat for old kwarg name
  
  begin;
    
        
            
            
            
            
        
    

    

    merge into DBT_PRACTICE.SNAPSHOTS.customers_incremental as DBT_INTERNAL_DEST
        using DBT_PRACTICE.SNAPSHOTS.customers_incremental__dbt_tmp as DBT_INTERNAL_SOURCE
        on ((DBT_INTERNAL_SOURCE.customer_id = DBT_INTERNAL_DEST.customer_id))

    
    when matched then update set
        "CUSTOMER_ID" = DBT_INTERNAL_SOURCE."CUSTOMER_ID","CUSTOMER_NAME" = DBT_INTERNAL_SOURCE."CUSTOMER_NAME","CITY" = DBT_INTERNAL_SOURCE."CITY","UPDATED_AT" = DBT_INTERNAL_SOURCE."UPDATED_AT"
    

    when not matched then insert
        ("CUSTOMER_ID", "CUSTOMER_NAME", "CITY", "UPDATED_AT")
    values
        ("CUSTOMER_ID", "CUSTOMER_NAME", "CITY", "UPDATED_AT")

;
    commit;