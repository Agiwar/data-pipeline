select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select purchase_type
from public.ods_first_purchase
where purchase_type is null



      
    ) dbt_internal_test