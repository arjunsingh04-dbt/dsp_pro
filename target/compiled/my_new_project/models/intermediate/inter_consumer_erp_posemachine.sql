select distinct er.cons_app_no,supervision_amnt,
estimate_amount,
cgst,
sgst,
amount_to_pay,
location,
deposit_amt,
Tnsc_amount,
payment_date,
payment_mode,
bank_name,
payment_type
from 
DSP_PROJ.STAGING.stg_erp_rev er left join
DSP_PROJ.STAGING.stg_pose_machine_d pd on er.cons_app_no=pd.application_numbwer