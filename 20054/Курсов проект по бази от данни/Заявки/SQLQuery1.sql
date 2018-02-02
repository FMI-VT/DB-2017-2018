SELECT * 
	FROM 
		book 
	WHERE 
		price > ( SELECT AVG(price) 
				  FROM book )
