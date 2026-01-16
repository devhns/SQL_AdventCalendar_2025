select count(*) from (select DISTINCT flake_type from snowfall_log
where fall_time = '2025-12-24')