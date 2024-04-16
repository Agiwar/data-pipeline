select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from public.stg_purchase_from_raw
where id is null



      
    ) dbt_internal_test