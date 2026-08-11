
  create or replace   view DSP_PROJ.MARTS.fact_pose_machine_d
  
  
  
  
  as (
    SELECT
    APPLICATION_NUMBWER AS CONSUMER_APPLICATION_NUMBER,
    TNSC_AMOUNT,
    PAYMENT_DATE,
    PAYMENT_MODE,
    BANK_NAME,
    PAYMENT_TYPE
FROM DSP_PROJ.STAGING.stg_pose_machine_d
  );

