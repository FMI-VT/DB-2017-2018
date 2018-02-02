SELECT b.title, a.type_name
FROM book AS b
INNER JOIN
	type AS a ON a.type_id = b.type_id