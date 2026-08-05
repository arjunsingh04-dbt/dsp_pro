
select 
distinct cad.CONSUMER_APPLICATION_NUMBER,
cad.CONSUMER_NAME,
cad.ADDRESS,
cad.created_date,
cad.APPLICATION_STATUS,
cad.SHORT_DESCRIPTION_OF_WORK,
cad.NATURE_OF_WORK_ID,
bpr.reg_amount,
bpr.payment_method_type,
bpr.additional_info1,
bpr.charge_amount

from {{ ref('stg_consumer_application_detail') }} cad left join
{{ ref('stg_billdesk_payment_res') }} bpr on cad.consumer_application_number=bpr.consumer_application_no