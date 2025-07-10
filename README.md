# 📊 YouTube Trending Data Pipeline (AWS)

A serverless data pipeline that collects, cleans, queries, and visualizes trending YouTube data using AWS.

## 🔧 Tools Used
- **AWS Lambda**: Python script to clean data
- **Amazon S3**: Stores raw and cleaned data
- **Amazon EventBridge**: Triggers Lambda daily at 12 AM PKT
- **Amazon Athena**: SQL queries on cleaned data
- **Amazon QuickSight**: Dashboards and visualizations
- **Amazon SES** *(optional)*: Email alert for success

## 🧱 Architecture
![Architecture](architecture.png)

## 🚀 Features
- Cleans nulls, duplicates, keeps useful columns
- Daily automation with no manual effort
- Athena-ready and QuickSight-compatible
- Beginner-friendly AWS stack

## 📂 Sample Queries (Athena)
```sql
SELECT country, COUNT(*) AS total_videos
FROM youtube_analysis.cleaned_videos
GROUP BY country
ORDER BY total_videos DESC
