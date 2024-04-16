select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select amount
from public.stg_purchase_from_raw
where amount is null



      
    ) dbt_internal_test