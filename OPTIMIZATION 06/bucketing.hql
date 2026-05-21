create table if not exists buck_users(
    id int,
    name string,
    salary int,
    unit string
)
clustered by (id)
sorted by (id) 
into 2 buckets ;

-- set hive.enforce.bucketing = true;

-- insert overwrite table buck_users select * from users;  load data in plain table to bucketized tables
-- check hadoop warehouse db where patitioned 