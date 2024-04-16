
  
    
    
        
        insert into public.stg_purchase_agg ("user_id", "first_transaction_at", "num_of_transaction", "total_amount")
  

WITH purchase AS (
    SELECT
        id,
        user_id,
        transaction_at,
        amount
    FROM
        public.stg_purchase_from_raw
),
purchase_agg AS (
    SELECT
        user_id,
        min(transaction_at) AS first_transaction_at,
        countState(id)      AS num_of_transaction,
        sum(amount)         AS total_amount
    FROM
        purchase
    GROUP BY
        user_id
)
SELECT
    user_id::Int64                         AS user_id,
    min(first_transaction_at)::DateTime    AS first_transaction_at,
    countMerge(num_of_transaction)::UInt64 AS num_of_transaction,
    sum(total_amount)::Decimal(38, 2)      AS total_amount
FROM
    purchase_agg
GROUP BY
    user_id
  