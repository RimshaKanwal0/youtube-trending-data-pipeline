-- analysis_queries.sql

-- ✅ 1. Top 10 Most Viewed Videos
SELECT 
  title, 
  channel_name, 
  country, 
  view_count
FROM youtube_analysis.cleaned_videos
ORDER BY view_count DESC
LIMIT 10;

-- ✅ 2. Top 5 Countries by Number of Videos
SELECT 
  country, 
  COUNT(*) AS video_count
FROM youtube_analysis.cleaned_videos
GROUP BY country
ORDER BY video_count DESC
LIMIT 5;

-- ✅ 3. Most Liked Videos (Top 10)
SELECT 
  title, 
  channel_name, 
  like_count, 
  country
FROM youtube_analysis.cleaned_videos
ORDER BY like_count DESC
LIMIT 10;

-- ✅ 4. Likes-to-Views Ratio (Top 10)
SELECT 
  title, 
  channel_name,
  ROUND(like_count * 100.0 / NULLIF(view_count, 0), 2) AS like_ratio,
  country
FROM youtube_analysis.cleaned_videos
WHERE view_count > 10000
ORDER BY like_ratio DESC
LIMIT 10;

-- ✅ 5. Most Commented Videos
SELECT 
  title, 
  channel_name,
  comment_count,
  country
FROM youtube_analysis.cleaned_videos
ORDER BY comment_count DESC
LIMIT 10;
