{{ config(materialized='view') }}

select CONSUMER_APPLICATION_NUMBER,CONSUMER_NAME,
ADDRESS,
{{ to_date('CREATED','varchar') }} as created_date,
APPLICATION_STATUS,SHORT_DESCRIPTION_OF_WORK,NATURE_OF_WORK_ID,
premise_area_type
from  {{ source('raw', 'CONSUMER_APPLICATION_DETAIL') }}




