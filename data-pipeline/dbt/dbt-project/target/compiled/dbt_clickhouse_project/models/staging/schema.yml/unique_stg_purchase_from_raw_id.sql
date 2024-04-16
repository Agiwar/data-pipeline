
    
    

select
    id as unique_field,
    count(*) as n_records

from public.stg_purchase_from_raw
where id is not null
group by id
having count(*) > 1


