select * from homies h
join homies_hash hh on h.user_id = hh.user_id
where email = $1;