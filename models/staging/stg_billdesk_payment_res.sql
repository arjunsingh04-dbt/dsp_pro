

select consumer_application_no, 
{{- to_date('transaction_date') -}} as Transaction_date,
mobile_no,
round(amount,0) as reg_amount,
payment_method_type,
additional_info1,
charge_amount
from {{ source('raw','BILLDESK_PAYMENT_RES') }} 