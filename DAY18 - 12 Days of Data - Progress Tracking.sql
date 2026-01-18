select subject, max(quiz_date), first_score, last_score from(
select *,
first_value(score) over (partition by subject order by quiz_date) as first_score,
last_value(score) over (partition by subject order by quiz_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as last_score
from daily_quiz_scores)
GROUP BY subject
--necessary for last_value func of SQlite lang 
--ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED