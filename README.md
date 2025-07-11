# 📊 YouTube Trending Data Pipeline (AWS)

A serverless data pipeline that collects, cleans, queries, and visualizes trending YouTube data using AWS.workflow_diagram.png

## 🔧 Tools Used
- **AWS Lambda**: Python script to clean data
- **Amazon S3**: Stores raw and cleaned data
- **Amazon EventBridge**: Triggers Lambda daily at 12 AM PKT
- **Amazon Athena**: SQL queries on cleaned data
- **Amazon QuickSight**: Dashboards and visualizations
- **Amazon SES**: Email alert for success


## 🧪 Workflow
1. Raw data uploaded to S3
2. Lambda cleans & saves to S3/cleaned/
3. Athena queries cleaned data
4. QuickSight visualizes top insights
5. EventBridge runs daily at 12 AM
6. Email alerts configured via SES (future)


## 🧱 Architecture
![Architecture](architecture.png) 

## 🚀 Features
- Cleans nulls, duplicates, keeps useful columns
- Daily automation with no manual effort
- Athena-ready and QuickSight-compatible
- Beginner-friendly AWS stack

## 📊 Visuals
- Top 10 Most Viewed Videos
- Views by Country
- Most Liked Videos
- Likes-to-Views Ratio

## 📸 Screenshots
> See `quicksight/screenshots/` for visuals.
