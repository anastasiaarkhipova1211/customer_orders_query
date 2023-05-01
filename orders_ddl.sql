CREATE EXTERNAL TABLE `orders`(
  `order_id` int,
  `customer_id` int,
  `order_date` date,
  `total_amount` double)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  's3://ordersbucketanastasia/'
TBLPROPERTIES (
  'classification'='parquet',
  'transient_lastDdlTime'='1681322780')