{{ config(materialized='incremental', 
unique_key='customer_id',
post_hook=["delete from {{ this }} t 
where 
not exists ( select 1 from {{source('raw','CUSTOMERS') }} s
where s.customer_id = t.customer_id )"

]

) }}



select

customer_id,

customer_name,

city,

updated_at

from {{ source('raw','CUSTOMERS') }}

{% if is_incremental() %}

where updated_at > (select max(updated_at) from {{ this }})

{% endif %}