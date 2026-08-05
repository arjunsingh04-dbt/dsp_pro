{% macro to_date(column_name, source_type='timestamp', format='DD-MM-YY HH12:MI:SS.FF9 AM') %}

{% if source_type == 'varchar' %}

    TO_DATE(
        TO_TIMESTAMP_NTZ(
            {{ column_name }},
            '{{ format }}'
        )
    )

{% else %}

    TO_DATE({{ column_name }})

{% endif %}

{% endmacro %}