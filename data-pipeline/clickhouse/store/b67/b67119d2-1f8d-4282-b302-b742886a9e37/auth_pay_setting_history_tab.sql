ATTACH TABLE _ UUID '3f7ea19c-a887-46ad-b173-05d59771a574'
(
    `id` Int64,
    `auth_pay_id` Int64,
    `history_type` Int32,
    `update_time` DateTime64(6),
    `channel_type` Int32,
    `channel` Nullable(String) DEFAULT NULL,
    `channel_paytool_code` Nullable(String) DEFAULT NULL,
    `channel_display_meta` Nullable(String) DEFAULT NULL,
    `channel_display_detail` Nullable(String) DEFAULT NULL,
    `use_jko_coin` Int16,
    `single_payment_max_amount` Nullable(Decimal(20, 2)) DEFAULT NULL,
    `currency` String DEFAULT 'TWD',
    `create_time` DateTime64(6),
    `modify_time` Nullable(DateTime64(6)) DEFAULT NULL,
    `_version` DateTime64(3) MATERIALIZED now64()
)
ENGINE = ReplacingMergeTree(_version)
ORDER BY id
SETTINGS index_granularity = 8192
