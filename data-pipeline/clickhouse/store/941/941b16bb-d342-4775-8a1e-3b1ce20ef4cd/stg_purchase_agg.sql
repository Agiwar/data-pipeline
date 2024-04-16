ATTACH TABLE _ UUID '6e6fa27f-31e3-4efd-a3d6-493ccb4e0942'
(
    `user_id` Int64,
    `first_transaction_at` DateTime,
    `num_of_transaction` UInt64,
    `total_amount` Decimal(38, 2)
)
ENGINE = AggregatingMergeTree
ORDER BY user_id
SETTINGS index_granularity = 8192
