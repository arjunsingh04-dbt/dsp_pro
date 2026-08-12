select application_numbwer,
txn_amount as Tnsc_amount,




    TO_DATE(
        TO_TIMESTAMP_NTZ(
            date_of_payment,
            'DD-MM-YY HH12:MI:SS.FF9 AM'
        )
    )



 as payment_date,
payment_mode,
bank_name,
payment_type

from DSP_PROJ.RAW.POSE_MACHINE_D