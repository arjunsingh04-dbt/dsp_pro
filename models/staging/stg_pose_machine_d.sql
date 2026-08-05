select application_numbwer,
txn_amount as Tnsc_amount,
{{to_date('date_of_payment','varchar')}} as payment_date,
payment_mode,
bank_name,
payment_type

from {{source('raw','POSE_MACHINE_D')}}