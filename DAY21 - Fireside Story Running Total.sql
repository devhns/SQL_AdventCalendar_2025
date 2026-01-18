select log_date, stories_shared, 
sum(stories_shared) over (order by log_date ROWS BETWEEN UNBOUNDED 
PRECEDING AND CURRENT ROW) as running_total
from story_log