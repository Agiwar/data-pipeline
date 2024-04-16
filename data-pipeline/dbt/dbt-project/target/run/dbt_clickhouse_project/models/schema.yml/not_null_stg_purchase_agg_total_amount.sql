select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select total_amount
from public.stg_purchase_agg
where total_amount is null



      
    ) dbt_internal_test