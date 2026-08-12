{% snapshot customer_check_snapshot%}
{{
    
    config(
        target_database = 'DBT_PRACTICE',
        target_schema='SNAPSHOTS',
        unique_key = 'customer_id',
        strategy = 'check',
        check_cols= [
            'customer_name',
            'city',
            'state',
            'phone'
        ]
        )}}

        select * from {{ref('stg_customers_check')}}

{% endsnapshot %}