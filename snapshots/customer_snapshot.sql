
{%snapshot customer_snapshot %}

{{config(
     target_database='DBT_PRACTICE',
    target_schema='SNAPSHOTS',
    unique_key = 'customer_id',
    strategy = 'timestamp',
    updated_at = 'updated_at'
)}}

select * from {{ref('stg_customers')}}

{%endsnapshot%}