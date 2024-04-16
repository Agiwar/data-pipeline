ATTACH TABLE _ UUID '89c46520-d9d3-49f2-8b9c-1f280495d775'
(
    `id` UInt32,
    `user_id` UInt32,
    `transaction_at` DateTime,
    `amount` Decimal(18, 2)
)
ENGINE = ReplacingMergeTree
ORDER BY id
SETTINGS index_granularity = 8192
