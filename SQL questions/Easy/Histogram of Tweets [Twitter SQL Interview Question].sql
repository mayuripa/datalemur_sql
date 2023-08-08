--https://datalemur.com/questions/sql-histogram-tweets
with user_tweet AS (
SELECT user_id,count(*) AS no_tweet FROM tweets
where tweet_date BETWEEN '01-01-2022' and '12-31-2022' 
GROUP BY user_id)

SELECT no_tweet AS tweet_bucket,COUNT(*) AS num_of_user
FROM user_tweet
GROUP BY no_tweet
