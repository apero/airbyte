USE [test_normalization];
    execute('create view _airbyte_test_normalization."renamed_dedup_cdc_excluded_ab2__dbt_tmp" as
    
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
select
    cast(id as 
    bigint
) as id,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    SYSDATETIME() as _airbyte_normalized_at
from "test_normalization"._airbyte_test_normalization."renamed_dedup_cdc_excluded_ab1"
-- renamed_dedup_cdc_excluded
where 1 = 1

    ');

