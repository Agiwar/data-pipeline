select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with relation_columns as (

        
        select
            cast('USER_ID' as String) as relation_column,
            cast('INT64' as String) as relation_column_type
        union all
        
        select
            cast('FIRST_PURCHASE_ID' as String) as relation_column,
            cast('INT64' as String) as relation_column_type
        union all
        
        select
            cast('FIRST_TRANSACTION_AT' as String) as relation_column,
            cast('DATETIME64(3)' as String) as relation_column_type
        union all
        
        select
            cast('NUM_OF_TRANSACTION' as String) as relation_column,
            cast('UINT64' as String) as relation_column_type
        union all
        
        select
            cast('TOTAL_AMOUNT' as String) as relation_column,
            cast('DECIMAL(38, 2)' as String) as relation_column_type
        union all
        
        select
            cast('STORE_ID' as String) as relation_column,
            cast('INT64' as String) as relation_column_type
        union all
        
        select
            cast('PAY_TYPE' as String) as relation_column,
            cast('INT32' as String) as relation_column_type
        union all
        
        select
            cast('PURCHASE_TYPE' as String) as relation_column,
            cast('INT32' as String) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'NUM_OF_TRANSACTION'
            and
            relation_column_type not in ('UINT64')

    )
    select *
    from test_data
      
    ) dbt_internal_test