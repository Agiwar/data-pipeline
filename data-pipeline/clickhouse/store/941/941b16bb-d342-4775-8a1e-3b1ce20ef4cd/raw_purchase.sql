ATTACH TABLE _ UUID '4744a045-c3b0-416b-b156-a655b00f97ac'
(
    `id` Int32,
    `user_id` Int32,
    `transaction_at` DateTime,
    `amount` Float32
)
ENGINE = MergeTree
ORDER BY tuple()
SETTINGS index_granularity = 8192
