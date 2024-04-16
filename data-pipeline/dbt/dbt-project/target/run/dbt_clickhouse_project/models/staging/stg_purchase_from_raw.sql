
  
    
    
        
        insert into public.stg_purchase_from_raw ("id", "user_id", "transaction_at", "amount")
  

WITH source AS (
    SELECT
        id::UInt32               AS id,
        user_id::UInt32          AS user_id,
        transaction_at::DateTime AS transaction_at,
        amount::Decimal(18, 2)   AS amount
    FROM
        public.raw_purchase
)
SELECT * FROM source
  