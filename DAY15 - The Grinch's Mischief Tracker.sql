SELECT *, 
mischief_score - LAG(mischief_score) OVER(order by log_date) as compare
FROM grinch_mischief_log
