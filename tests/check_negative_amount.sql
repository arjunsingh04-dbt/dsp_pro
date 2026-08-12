select * from 
{{ref('stg_erp_budget_workflow_amount')}}
where TOTAL_SUPV_AMOUNT<0