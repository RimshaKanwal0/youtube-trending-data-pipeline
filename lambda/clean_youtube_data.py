def lambda_handler(event, context):
    import pandas as pd
    import boto3
    from io import StringIO

    s3 = boto3.client('s3')
    bucket = 'youtube-trending-rk-2025'
    raw_key = 'raw/trending_yt_videos_113_countries.csv'
    cleaned_key = 'cleaned/trending_cleaned.csv'

    try:
        print("📥 Reading raw data from S3...")
        obj = s3.get_object(Bucket=bucket, Key=raw_key)
        df = pd.read_csv(obj['Body'], low_memory=False)
        print(f"✅ Raw data loaded: {len(df)} rows")

        # Clean
        df.drop_duplicates(inplace=True)
        df.dropna(subset=['video_id', 'title', 'channel_name'], inplace=True)
        if 'publish_date' in df.columns:
            df['publish_date'] = pd.to_datetime(df['publish_date'], errors='coerce').dt.date
        df = df[df['publish_date'].notnull()]
        columns_to_keep = [
            'video_id', 'title', 'channel_name', 'country',
            'view_count', 'like_count', 'comment_count',
            'publish_date', 'langauge'
        ]
        df = df[[col for col in columns_to_keep if col in df.columns]]

        print(f"✅ Cleaned data: {len(df)} rows remaining")

        # Upload
        csv_buffer = StringIO()
        df.to_csv(csv_buffer, index=False)
        s3.put_object(Bucket=bucket, Key=cleaned_key, Body=csv_buffer.getvalue())
        print(f"🎉 Done! Cleaned data uploaded to s3://{bucket}/{cleaned_key}")

    except Exception as e:
        print(f"❌ Error: {str(e)}")
