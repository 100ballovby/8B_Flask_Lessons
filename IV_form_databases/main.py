import sqlite3

conn = sqlite3.connect('lesson_db.db')
print(sqlite3.version)
conn.close()
