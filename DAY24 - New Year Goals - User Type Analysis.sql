WITH user_completed_goals AS (
    SELECT
        user_id,
        user_type,
        COUNT(*) AS completed_goals
    FROM user_goals
    WHERE goal_status = 'Completed'
    GROUP BY user_id, user_type
)

SELECT
    user_type,
    AVG(completed_goals) AS avg_completed_goals_per_user
FROM user_completed_goals
GROUP BY user_type;