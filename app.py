
import mariadb
import sys

# Connect to MariaDB Platform
try:
    conn = mariadb.connect(
        user="root",
        password="root",
        host="localhost",
        port=3306,
        database="proyecto_egresados"

    )
except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)

cur = conn.cursor()

# with open('./create_db.sql', 'r') as myfile:
#   data = myfile.read()
#   cur.execute(data)

cur.execute("CREATE DATABASE xd")