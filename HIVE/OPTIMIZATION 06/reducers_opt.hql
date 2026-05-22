In order to change the average load for a reducer (in bytes):                                                                                 
  set hive.exec.reducers.bytes.per.reducer=<number>   

In order to limit the maximum number of reducers:                                                                                             
  set hive.exec.reducers.max=<number>              

In order to set a constant number of reducers:                                                                                                
  set mapreduce.job.reduces=<number> 




## CHECK THE NUMBER OF FILES IN HDFS FILE LOCATION AFTER EDITIING NUMBER OF REDUCERS
