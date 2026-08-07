

select

customer_id,

customer_name,

city,

updated_at

from {{ source('raw','CUSTOMERS') }}