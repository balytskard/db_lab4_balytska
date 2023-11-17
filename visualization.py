import psycopg2
import numpy as np
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

    # Task 1
    cur.execute(query_1)
    years_1 = []
    books_total_1 = []

    for row in cur:
        years_1.append(row[0])
        books_total_1.append(row[1])

    fig, ax = plt.subplots(1, 3)
    ax[0].hist(years_1, color='g', edgecolor='y')
    ax[0].set_title('Кількість книг за роком публікації')
    ax[0].set_xlabel('Рік')
    ax[0].set_ylabel('Кількість книг')


    # Task 2
    cur.execute(query_2)
    years_2 = []
    books_total_2 = []
    percentage = []

    for row in cur:
        years_2.append(row[0])
        books_total_2.append(row[1])
        percentage.append(row[2])

    ax[1].pie(percentage, labels=years_2, autopct='%1.1f%%', 
               wedgeprops={'edgecolor':'y'})
    ax[1].set_title('Частка книг, виданих кожного року, \nпочинаючи з 2000')


    # Task 3
    cur.execute(query_3)
    age = []
    ratings = []

    for row in cur:
        age.append(row[0])
        ratings.append(row[1])

    slope, intercept = np.polyfit(np.array(age), np.array(ratings), 1)
    line = np.multiply(slope, age) + intercept
    ax[2].scatter(age, ratings, color='g')
    ax[2].plot(age, line, color='g')
    ax[2].set_title('Залежність оцінок від віку користувачів')
    ax[2].set_xlabel('Вік')
    ax[2].set_ylabel('Поставлений рейтинг')


mng = plt.get_current_fig_manager()
mng.resize(1400, 600)

plt.show()
