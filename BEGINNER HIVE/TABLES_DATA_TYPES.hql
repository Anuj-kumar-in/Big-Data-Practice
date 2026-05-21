
## TABLE FOR ARRAY DATA
["HDFS":"HADOOP":"JAVA"]

create table if not exists user (
    id int ,
    name string,
    skills array<string>
)
row format delimited
fields terminated by ','
collection items terminated by ':' ;


-- Reading data 
    select id , name , size(skills) as no_of_skills,
    array_contains(skills , "HADOOP") as knows_hadoop,
    sort_array(skills) as sorted_array
    from user;


## TABLE FOR MAP DATA 

{101,ANUJ, age :21 | gender :M}

create table if not exists user (
    id int ,
    name string,
    details <string,string>
)
row format delimited
fields terminated by ','
collection items terminated by '|'
map keys terminated by ':'  ;

-- Reading data 
    select id,name,
    details["gender"] as employee_gender
    from user;