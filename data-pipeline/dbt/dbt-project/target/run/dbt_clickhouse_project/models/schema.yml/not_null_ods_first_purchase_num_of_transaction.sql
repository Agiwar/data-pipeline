select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select num_of_transaction
from public.ods_first_purchase
where num_of_transaction is null



      
    ) dbt_internal_test