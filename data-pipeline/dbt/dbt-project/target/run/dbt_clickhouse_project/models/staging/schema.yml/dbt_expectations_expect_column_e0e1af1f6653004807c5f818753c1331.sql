select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with relation_columns as (

        
        select
            cast('ID' as String) as relation_column,
            cast('UINT32' as String) as relation_column_type
        union all
        
        select
            cast('USER_ID' as String) as relation_column,
            cast('UINT32' as String) as relation_column_type
        union all
        
        select
            cast('TRANSACTION_AT' as String) as relation_column,
            cast('DATETIME' as String) as relation_column_type
        union all
        
        select
            cast('AMOUNT' as String) as relation_column,
            cast('DECIMAL(18, 2)' as String) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'AMOUNT'
            and
            relation_column_type not in ('DECIMAL(18, 2)')

    )
    select *
    from test_data
      
    ) dbt_internal_test