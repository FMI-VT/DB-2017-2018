SELECT b.title, a.first_name
FROM book AS b
INNER JOIN 
	book_author AS ba ON ba.book_id = b.book_id 
INNER JOIN 
	Author a ON a.author_id = ba.author_id
Where price > ( SELECT AVG(price) FROM book )