ATTACH TABLE _ UUID '5cfefa0c-957d-4fdd-b93e-b8a4b5b3f1d9'
(
    `user_id` Int64,
    `first_purchase_id` Int64,
    `first_transaction_at` DateTime64(3),
    `num_of_transaction` UInt64,
    `total_amount` Decimal(38, 2),
    `store_id` Nullable(Int64),
    `pay_type` Int32,
    `purchase_type` Int32
)
ENGINE = AggregatingMergeTree
ORDER BY user_id
SETTINGS index_granularity = 8192
