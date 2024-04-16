with test_data as (

    select
        4 as number_actual_columns,
        4 as value

)
select *
from test_data
where
    number_actual_columns != value