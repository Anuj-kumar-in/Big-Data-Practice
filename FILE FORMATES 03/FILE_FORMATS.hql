
## STORING AS PARQUET 

    create table user1(
        id int,
        name string
    )
    stored as parquet ;

-- Data loading
 from user insert overwrite table user select * ;

 