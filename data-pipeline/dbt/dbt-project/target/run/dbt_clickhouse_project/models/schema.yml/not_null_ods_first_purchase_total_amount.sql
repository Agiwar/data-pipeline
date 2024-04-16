select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select total_amount
from public.ods_first_purchase
where total_amount is null



      
    ) dbt_internal_test