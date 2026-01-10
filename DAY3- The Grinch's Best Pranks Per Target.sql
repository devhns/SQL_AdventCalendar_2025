select * from (SELECT
    target_name,prank_description,
    ROW_NUMBER() OVER (PARTITION BY target_name ORDER BY evilness_score DESC, created_at DESC)
  AS row_number
FROM grinch_prank_ideas) t
where row_number = 1