
## STORING AS PARQUET 

    create table user1(
        id int,
        name string
    )
    stored as parquet ;

-- Data loading
 from user insert overwrite table user select * ;

 
 #STORING AS ORC 

  create table sales_order_grouped_orc_v1 stored as orc as select year_id, sum(sales) as total_sales from sales_order_data_orc group by year_id;