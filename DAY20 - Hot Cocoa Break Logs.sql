select *
from cocoa_logs a, break_schedule b, cocoa_types c, locations d
where a.cocoa_id = c.cocoa_id and b.break_id = a.break_id AND
b.location_id = d.location_id
