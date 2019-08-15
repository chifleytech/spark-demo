drop table if exists amazon;
drop table if exists google;
drop table if exists expected;

CREATE EXTERNAL TABLE amazon(
   id           string
  ,title        string
  ,description  string
  ,manufacturer string
  ,price        string )
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",
   "quoteChar"     = "\""
)
STORED AS TEXTFILE LOCATION 'hdfs://master:9000/data/shopping-cart/amazon';


CREATE EXTERNAL TABLE google(
   id           string
  ,title        string
  ,description  string
  ,manufacturer string
  ,price        string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",
   "quoteChar"     = "\""
)
STORED AS TEXTFILE LOCATION 'hdfs://master:9000/data/shopping-cart/google';


CREATE EXTERNAL TABLE expected(
   amazon   string
  ,google   string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",
   "quoteChar"     = "\""
)
STORED AS TEXTFILE LOCATION 'hdfs://master:9000/data/shopping-cart/expected';
