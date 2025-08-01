WITH FirstLogin AS (
  SELECT player_id, MIN(event_date) AS first_login
  FROM Activity
  GROUP BY player_id
),
CameBackNextDay AS (
  SELECT DISTINCT a.player_id
  FROM Activity a
  JOIN FirstLogin f
    ON a.player_id = f.player_id
   AND a.event_date = DATE_ADD(f.first_login, INTERVAL 1 DAY)
)
SELECT
  ROUND(
    COUNT(c.player_id) * 1.0 / (SELECT COUNT(*) FROM FirstLogin),
    2
  ) AS fraction
FROM CameBackNextDay c;
