
  create or replace   view DSP_PROJ.MARTS.fact_erp_rev
  
  
  
  
  as (
    
SELECT
  CONS_APP_NO AS CONSUMER_APPLICATION_NUMBER,
    SUPERVISION_AMNT,
    ESTIMATE_AMOUNT,
    CGST,
    SGST,
    AMOUNT_TO_PAY,
    LOCATION,
    DEPOSIT_AMT,
    APPROVED_BY,
    CREATE_DATE
FROM DSP_PROJ.STAGING.stg_erp_rev
  );

