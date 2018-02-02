SELECT b.title, a.publisher_name, b.price
FROM book AS b
INNER JOIN 
	book_publisher AS ba ON ba.book_id = b.book_id
INNER JOIN 
	publisher a ON a.publisher_id = ba.publisher_id
