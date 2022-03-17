
SELECT
    size,
    {{ dbt_utils.get.pivot('color', dbt_utils.get_column_values(ref('call_centre_zone0'), 'color')) }}
FROM ref('call_centre_zone0')
GROUP BY size