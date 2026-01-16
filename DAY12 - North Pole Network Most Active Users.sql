SELECT * FROM (SELECT a.user_id, a.user_name, date(b.sent_at) as tarih,  count(b.message_id), 
DENSE_RANK() OVER (PARTITION BY date(b.sent_at)  ORDER BY count(b.message_id) DESC) as rank
FROM npn_users a, npn_messages b
where a.user_id = b.sender_id 
group by a.user_id,date(b.sent_at))
WHERE RANK = 1
ORDER BY tarih asc