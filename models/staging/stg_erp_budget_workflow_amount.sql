

select consumer_application_no,
location,
supervision_amount,
estimate_amount,
cgst,
sgst,
{{to_date('created','varchar')}}  as created_at,
total_balance_super_amount as TOTAL_SUPV_AMOUNT,
je_return_amount,
minus_cost,
version_number
from {{source('raw','ERP_BUDGET_WORKFLOW_AMOUNT')}}