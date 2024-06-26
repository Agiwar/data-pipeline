ATTACH TABLE _ UUID '19e5e122-b6a2-4792-b2dc-af55af6d46f2'
(
    `ID` Int64,
    `PurchaseNo` Nullable(String),
    `PurchaseType` Int32,
    `PayType` Int32,
    `BaseAmount` Nullable(Decimal(18, 2)),
    `TotalAmount` Decimal(18, 2),
    `NoneDiscount` Nullable(Decimal(18, 2)),
    `PayAmount` Decimal(18, 2),
    `PurchaseStatus` Int32,
    `PayCode` Nullable(String),
    `CoinRate` Nullable(Int32),
    `Redeem` Nullable(Int32),
    `BenefitRedeem` Int32,
    `PayBack` Decimal(18, 2),
    `StandingPayBack` Nullable(Decimal(18, 2)),
    `BenefitPayBack` Decimal(18, 2),
    `CashBackAmount` Decimal(18, 2),
    `UnRedeem` Decimal(18, 2),
    `PayRate` Nullable(Decimal(18, 2)),
    `FeeRate` Nullable(Decimal(18, 2)),
    `MealRate` Nullable(Decimal(18, 2)),
    `EventRedeemRate` Nullable(Decimal(18, 2)),
    `JKOSCoinRate` Nullable(Decimal(18, 2)),
    `DeliveryRate` Nullable(Decimal(18, 2)),
    `CreateTime` DateTime64(3),
    `StoreID` Nullable(Int64),
    `ReimburseStatus` Int32,
    `AccountID` Int64,
    `JKOSID` Nullable(String),
    `TargetTitle` String,
    `MemberPhone` Nullable(String),
    `PurchaseID` Nullable(Int64),
    `RowVersion` Int64,
    `EventRedeem` Nullable(Int32),
    `EventID` Nullable(Int64),
    `TeamNo` Nullable(String),
    `PartnerType` Int32,
    `PartnerKey` Nullable(String),
    `DeliveryFee` Int32,
    `PaybackPrefer` Nullable(Int32),
    `PayAccount` Nullable(String),
    `ReceiptAccount` Nullable(String),
    `Currency` Int32,
    `TransactionSeq` String,
    `TransactionTime` DateTime64(3),
    `ReimburseID` Nullable(Int64),
    `RedeemReimburseID` Nullable(Int64),
    `IsSpecificPayment` Bool,
    `IsJKOSReimburse` Bool,
    `ESunBankOrderNo` Nullable(String),
    `ESunReceiveTime` Nullable(String),
    `PaybackPercent` Nullable(Int32),
    `PayRateType` Int32,
    `PayingAmount` Nullable(Decimal(18, 2)),
    `DepositAmount` Nullable(Decimal(18, 2)),
    `UpdateTime` DateTime64(3),
    `UnPayBack` Decimal(18, 2),
    `_version` DateTime64(3) MATERIALIZED now64()
)
ENGINE = ReplacingMergeTree(_version)
ORDER BY ID
SETTINGS index_granularity = 8192
