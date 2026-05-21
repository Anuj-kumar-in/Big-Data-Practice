## Using SerDe library


## For CSV format
DATA :
    name,location
    anuj, "Haridwar , india"

create table csv_table                                                                                                                  
     (                                                                                                                                       
     name string,                                                                                                                            
     location string                                                                                                                         
     )                                                                                                                                       
     row format serde 'org.apache.hadoop.hive.serde2.OpenCSVSerde'                                                                           
     with serdeproperties (                                                                                                                  
      "separatorChar" = ",",                                                                                                                 
      "quoteChar" = "\"",                                                                                                                    
      "escapeChar" = "\\"                                                                                                                    
     )                                                                                                                                       
     stored as textfile                                                                                                                      
     tblproperties ("skip.header.line.count" = "1"); 


     ## Add hive catalog jar file 
        Download Link : https://repo1.maven.org/maven2/org/apache/hive/hcatalog/hive-hcatalog-core/0.14.0/
        >add jar filepath;

    


## For json format 


create table json_table                                                                                                                 
     ( name string,                                                                                                                          
     id int,                                                                                                                                 
     skills array<string>                                                                                                                    
     )                                                                                                                                       
     row format serde 'org.apache.hive.hcatalog.data.JsonSerDe'                                                                              
     stored as textfile; 
