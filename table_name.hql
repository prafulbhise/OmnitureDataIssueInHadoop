CREATE EXTERNAL TABLE `table_name`(
col1 string,
col2 string,
col3 string
PARTITIONED BY (
  `dt` string)
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY '|'
  NULL DEFINED AS ''
STORED AS 
INPUTFORMAT 'com.praful.company.mapred.OmnitureDataFileInputFormat' 
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.IgnoreKeyTextOutputFormat'
LOCATION
  '/home/praful/data';
