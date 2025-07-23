-- LeetCode SQL Problem 5: Tweets with Invalid Length
-- https://leetcode.com/problems/tweets-with-invalid-length/

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
