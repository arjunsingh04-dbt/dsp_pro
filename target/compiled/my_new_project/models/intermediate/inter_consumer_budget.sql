select distinct ebw.consumer_application_no,
ebw.total_supv_amount,
ebw.je_return_amount,
ebw.minus_cost,
ebw.version_number 
from DSP_PROJ.STAGING.stg_erp_budget_workflow_amount ebw