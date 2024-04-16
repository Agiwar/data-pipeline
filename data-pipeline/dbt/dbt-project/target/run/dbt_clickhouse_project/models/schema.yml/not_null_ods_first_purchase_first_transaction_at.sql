select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select first_transaction_at
from public.ods_first_purchase
where first_transaction_at is null



      
    ) dbt_internal_test