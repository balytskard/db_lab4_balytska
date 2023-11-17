import psycopg2
import matplotlib.pyplot as plt

username = 'postgres'
password = 'superstar'
database = 'db_lab3'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT 
	year_of_publication,
	COUNT(book_title) AS books_total
FROM books
GROUP BY year_of_publication;
'''
query_2 = '''
SELECT 
	year_of_publication,
	COUNT(book_title) AS books_total,
    ROUND((COUNT(book_title) * 100.0) / SUM(COUNT(book_title)) OVER (), 1) AS percentage
FROM books
GROUP BY year_of_publication
HAVING year_of_publication >= 2000;
'''
query_3 = '''
SELECT
	age, 
	book_rating
FROM users
JOIN ratings
ON users.user_id = ratings.user_id;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
                       
    cur = conn.cursor()

    print('Кількість книг за роком публікації:')
    cur.execute(query_1)

    for row in cur:
       print(row)

    print('\nЧастка книг, виданих кожного року, починаючи з 2000, від усіх книг виданих з того ж часу:')
    cur.execute(query_2)

    for row in cur:
       print(row)

    print('\nРозподіл оцінок за віком користувачів:')
    cur.execute(query_3)

    for row in cur:
       print(row)
