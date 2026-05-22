
REDUCE SIDE JOIN (INNER JOIN)

        set hive.auto.convert.join = false; -- prevent hive for auto join for optimization
        select * from buck_users u inner join_buck_locations l
You can see number of reducers < numbers of mappers


MAP SIDE JOIN (BROADCAST JOIN)

 join will happen locally thats why we don need reducers (Cant use higher size data)
 full data of smaller dataset will send to differnet mappers to join
You can see number of reducers =0

        set hive.auto.convert.join = true;
        select * from buck_users u inner join_buck_locations l


BUCKET MAP JOIN

    set hive.optimize.bucketmapjoin=true;
    SET hive.auto.convert.join=true;


    SELECT * FROM buck_users u INNER JOIN buck_locations l ON u.id = l.id;

like the map side join but we dont send whoole data to join 
data will divided into buckets for both datasets
and mappers will assign to buckets ((B1,B2)->M1)

SMBM
both Datasets buckets will be sorted(with respect to join columns) so data will join with related data


        set hive.enforce.sortmergebucketmapjoin=false;
        set hive.auto.convert.sortmerge.join=true;
        set hive.optimize.bucketmapjoin = true;
        set hive.optimize.bucketmapjoin.sortedmerge = true;


        SET hive.auto.convert.join=false;
        SELECT * FROM buck_users u INNER JOIN buck_locations l ON u.id = l.id;