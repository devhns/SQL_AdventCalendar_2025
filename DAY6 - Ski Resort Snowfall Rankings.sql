WITH annual_snowfall AS (
    SELECT
        resort_id,
        resort_name,
        SUM(snowfall_inches) AS annual_snowfall
    FROM resort_monthly_snowfall
    GROUP BY resort_id, resort_name
)
  
SELECT
    resort_id,
    resort_name,
    annual_snowfall,
    NTILE(4) OVER (ORDER BY annual_snowfall DESC) AS snowfall_quartile
FROM annual_snowfall
ORDER BY annual_snowfall DESC;