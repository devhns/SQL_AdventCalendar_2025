WITH minscore as (SELECT * from behavior_scores
order by behavior_score ASC
limit 1), maxscore as
(SELECT * from behavior_scores
order by behavior_score DESC
limit 1)

select * from minscore
UNION ALL 
select * from maxscore