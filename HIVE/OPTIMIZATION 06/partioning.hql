 create table sales_data                                                                                                    
    > (                                                                                                                                       
    > ORDERNUMBER int,                                                                                                                        
    > QUANTITYORDERED int,                                                                                                                    
    > SALES float,                                                                                                                            
    > YEAR_ID int                                                                                                                             
    > )                                                                                                                                       
    > partitioned by (COUNTRY string);


## STATIC PARTITIONING 


    set hive.mapred.mode=strict;

    insert overwrite table sales_data partition(country = 'USA') 
    select ordernumber,quantityordered,sales,year_id 
    from sales_order_data where country = 'USA';


## DYNAMIC PARTITIONING 

    set hive.exec.dynamic.partition.mode=nonstrict;

    insert overwrite table sales_data partition(country) 
    select ordernumber,quantityordered,sales,year_id 
    from sales_order_data where country = 'USA';


## MULTILEVEL PARTITIONING

    insert overwrite table sales_data partition(country ,year_id) 
    select ordernumber,quantityordered,sales,year_id 
    from sales_order_data where country = 'USA';



** CHECK DATABASE IN HDFS WAREHOUSE LOCATION TO SEE HOW PARTITIONING WILL HAPPEN