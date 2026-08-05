select cons_app_no,
round(sup_amt,0) as supervision_amnt,
round(est_amt,0) as estimate_amount,
cgst,sgst,
pay_amt as amount_to_pay,
location,
deposit_amt,
approved_by,
{{ to_date('created','varchar')}} as create_date

from {{source('raw','ERP_REV')}}