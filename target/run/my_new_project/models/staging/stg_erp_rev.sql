
  create or replace   view DBT_PRACTICE.RAW.stg_erp_rev
  
  
  
  
  as (
    select cons_app_no,
round(sup_amt,0) as supervision_amnt,
round(est_amt,0) as estimate_amount,
cgst,sgst,
pay_amt as amount_to_pay,
location,
deposit_amt,
approved_by,




    TO_DATE(
        TO_TIMESTAMP_NTZ(
            created,
            'DD-MM-YY HH12:MI:SS.FF9 AM'
        )
    )



 as create_date

from DSP_PROJ.RAW.ERP_REV
  );

