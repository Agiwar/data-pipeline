
    
    

select
    first_purchase_id as unique_field,
    count(*) as n_records

from public.ods_first_purchase
where first_purchase_id is not null
group by first_purchase_id
having count(*) > 1


