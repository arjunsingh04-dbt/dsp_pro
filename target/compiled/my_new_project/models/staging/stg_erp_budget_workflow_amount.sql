select consumer_application_no,
location,
supervision_amount,
estimate_amount,
cgst,
sgst,




    TO_DATE(
        TO_TIMESTAMP_NTZ(
            created,
            'DD-MM-YY HH12:MI:SS.FF9 AM'
        )
    )



  as created_at,
total_balance_super_amount as TOTAL_SUPV_AMOUNT,
je_return_amount,
minus_cost,
version_number
from DSP_PROJ.RAW.ERP_BUDGET_WORKFLOW_AMOUNT