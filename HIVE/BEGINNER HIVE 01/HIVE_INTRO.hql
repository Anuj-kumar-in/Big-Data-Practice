in hive terminal:


-- CREATING DATABASES
show databases;
create databse if not exists intro ;
use intro;

## You must show database in the warehouse by Command

        hadoop -ls fs '/user/hive/warehouse'




-- CREATING TABLES

-- internal table (CSV fromat)

    create table if not exists users (
        id int,
        user string,
    )
    row forat delimited
    fields terminated by ',';

-- loading data from local(cloudera local)

    load data local inpath "file:///home/cloudera/intro.csv" into table users;

-- loading data from hdfs location
    first put data into temp Dir 
    load data inpath "file:///home/cloudera/intro.csv" into table users;




-- External table

    create external table intro (
        id int,
        name string
    )
    row format delimited ','
    location 'path' ;


## Table Info 
    describe intro;
    describe formatted intro;

## You can find these tables into cloudera local storage system by command : 

    hadoop -ls fs '/user/hive/warehouse/intro.db'


## Selecting 

    select * from user;



# CREATING DUPLICATE  TABLE 

    create table duplicate as select * from user;



# COPY DATA FROM ONE TABLE TO  ANOTHER

        insert into table table2 select * from table1