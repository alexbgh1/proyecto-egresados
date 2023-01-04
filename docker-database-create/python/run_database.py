import mysql.connector

connection = mysql.connector.connect(
    user='root', password='root', host='mysql', port="3306", database='db')
print("DB connected")


cursor = connection.cursor()
cursor.execute('show tables')
tables = cursor.fetchall()
connection.close()


print("--------------------------------------------------------")
print("Tablas dentro de la base de datos: " , tables)
print("--------------------------------------------------------")
print("Database creada correctamente")

