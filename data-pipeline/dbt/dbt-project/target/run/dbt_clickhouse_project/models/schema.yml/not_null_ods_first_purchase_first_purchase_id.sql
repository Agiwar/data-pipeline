select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select first_purchase_id
from public.ods_first_purchase
where first_purchase_id is null



      
    ) dbt_internal_test