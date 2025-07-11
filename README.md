A serverless end-to-end data pipeline project built entirely on AWS that automates the collection, cleaning, analysis, and visualization of trending YouTube videos from 113 countries. This project demonstrates how to integrate various AWS services like S3, Lambda, EventBridge, Athena, QuickSight, and SES to build a scalable and automated data analytics workflow.

This is my first cloud-native mini project and reflects key skills in data engineering, serverless computing, SQL analytics, and dashboard reporting.


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

---

## ✅ Project Workflow: End-to-End Steps

---

### 🔹 1. Data Collection (S3)
Raw YouTube video data is uploaded to an S3 bucket.

- **Bucket Name:** `youtube-trending-rk-2025`
- **Folders:**
  - `raw/` → Original CSV file
  - `cleaned/` → Cleaned output by Lambda


---

### 🔹 2. Data Cleaning (Lambda)
A Lambda function reads raw data, cleans it (removes nulls, converts dates), and uploads the cleaned result back to S3.

- **Function Name:** `cleanYoutubeDataFunction`
- **Trigger:** Invoked manually or via EventBridge
- **Output:** Cleaned data in CSV format


---

### 🔹 3. Automation (EventBridge Scheduler)
The Lambda function is scheduled to run daily at **12:00 AM** using **EventBridge**.

- **Rule Name:** `DailyMidnightRun`
- **Target:** `cleanYoutubeDataFunction`

---

### 🔹 4. Query Layer (Athena)
Using Amazon Athena, queries are run directly on S3 without ETL.

- **Database:** `youtube_analysis`
- **Table:** `cleaned_videos`

Sample Queries:
- Top 10 Most Viewed Videos
- Most Liked Videos
- Likes-to-Views Ratio
- Views by Country


---

### 🔹 5. Data Visualization (QuickSight)
Amazon QuickSight is used to create dashboards and visuals:

- **Dataset:** Custom SQL → `top_10_viewed_videos`
- **Charts:**
  - Vertical Bar: View Count by Title
  - KPIs: View Count, Likes
  - Group by Country & Channel

---
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




