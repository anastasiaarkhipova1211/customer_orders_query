CREATE EXTERNAL TABLE `customers`(
  `customer_id` int,
  `customer_name` string,
  `customer_city` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  's3://customersbucketanastasia/'
TBLPROPERTIES (
  'classification'='parquet',
  'transient_lastDdlTime'='1681326543')



