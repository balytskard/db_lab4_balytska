-- Вивести кількість книг за роком публікації
SELECT 
	year_of_publication,
	COUNT(book_title) AS books_total
FROM books
GROUP BY year_of_publication;

-- Частка книг, виданих кожного року, починаючи з 2000, 
-- від усіх книг виданих з того ж часу
SELECT 
	year_of_publication,
	COUNT(book_title) AS books_total,
    ROUND((COUNT(book_title) * 100.0) / SUM(COUNT(book_title)) OVER (), 1) AS percentage
FROM books
GROUP BY year_of_publication
HAVING year_of_publication >= 2000;

-- Розподіл оцінок за віком користувачів
SELECT
	age, 
	book_rating
FROM users
JOIN ratings
ON users.user_id = ratings.user_id;
