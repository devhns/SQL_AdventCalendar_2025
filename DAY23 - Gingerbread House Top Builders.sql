SELECT builder_id, builder_name,COUNT(distinct candy_type) 
FROM gingerbread_designs
group by builder_id, builder_name
having COUNT(distinct candy_type)  >= 4