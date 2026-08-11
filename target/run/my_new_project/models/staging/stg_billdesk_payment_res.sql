
  create or replace   view DBT_PRACTICE.RAW.stg_billdesk_payment_res
  
  
  
  
  as (
    select consumer_application_no,



    TO_DATE(transaction_date)



as Transaction_date,
mobile_no,
round(amount,0) as reg_amount,
payment_method_type,
additional_info1,
charge_amount
from DSP_PROJ.RAW.BILLDESK_PAYMENT_RES
  );

