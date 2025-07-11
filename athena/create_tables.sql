-- create_tables.sql
CREATE DATABASE IF NOT EXISTS youtube_analysis;

CREATE EXTERNAL TABLE IF NOT EXISTS youtube_analysis.cleaned_videos (
    video_id STRING,
    title STRING,
    channel_name STRING,
    country STRING,
    view_count BIGINT,
    like_count BIGINT,
    comment_count BIGINT,
    publish_date DATE,
    langauge STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
    'separatorChar' = ',',
    'quoteChar' = '"'
)
STORED AS TEXTFILE
LOCATION 's3://youtube-trending-rk-2025/cleaned/'
TBLPROPERTIES ('skip.header.line.count'='1');
