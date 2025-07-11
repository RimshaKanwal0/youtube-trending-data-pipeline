# 📊 YouTube Trending Data Pipeline (AWS)

A serverless data pipeline that collects, cleans, queries, and visualizes trending YouTube data using AWS.workflow_diagram.png

## 🔧 Tools Used
- **AWS Lambda**: Python script to clean data
- **Amazon S3**: Stores raw and cleaned data
- **Amazon EventBridge**: Triggers Lambda daily at 12 AM PKT
- **Amazon Athena**: SQL queries on cleaned data
- **Amazon QuickSight**: Dashboards and visualizations
- **Amazon SES**: Email alert for success


## 🧱 Architecture
<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/4382d38b-dc18-4e39-b233-7a884d7f4e19" />

## 🧪 Workflow
1. Raw data uploaded to S3
2. Lambda cleans & saves to S3/cleaned/
3. Athena queries cleaned data
4. QuickSight visualizes top insights
5. EventBridge runs daily at 12 AM
6. Email alerts configured via SES (future)


## 🚀 Features
- Cleans nulls, duplicates, keeps useful columns
- Daily automation with no manual effort
- Athena-ready and QuickSight-compatible
- Beginner-friendly AWS stack

## 📊 Visuals
- Top 10 Most Viewed Videos
- Views by Country
- Most Liked Videos
- etc

## 📸 Screenshots
> See `quicksight/screenshots/` for visuals.
Some visuals are displayed below.
<img width="1920" height="1080" alt="s3_bucket_list" src="https://github.com/user-attachments/assets/a03597c8-2126-44e2-b12d-304eb214fbdd" />
<img width="1920" height="1080" alt="youtube-trending-rk-2025" src="https://github.com/user-attachments/assets/42fd9050-9820-45c6-a526-44f604e900b2" />
> <img width="1920" height="1080" alt="top_10_most_liked video analysis" src="https://github.com/user-attachments/assets/9fcf03c7-2031-46eb-aee6-adf44cb28fca" />




