select sum(paper_used_meters) from holiday_orders
where gift_wrap = 1 and delivery_status = 'Delivered'