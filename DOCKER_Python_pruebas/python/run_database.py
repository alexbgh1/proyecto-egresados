import mysql.connector

connection = mysql.connector.connect(
    user='root', password='root', host='mysql', port="3306", database='db')
print("DB connected")


cursor = connection.cursor()
print('xd')
cursor.execute('show databases')
students = cursor.fetchall()
connection.close()

print(students)