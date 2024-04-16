with test_data as (

    select
        8 as number_actual_columns,
        8 as value

)
select *
from test_data
where
    number_actual_columns != value