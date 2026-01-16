select oven_id, round(avg(baking_time_minutes),1) from cookie_batches
GROUP BY oven_id