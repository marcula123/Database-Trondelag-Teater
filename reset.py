import sqlite3
import os

def reset_database(db_path):
    if os.path.exists(db_path):
        conn = sqlite3.connect(db_path)
        cursor = conn.cursor()

        cursor.execute("SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';")
        tables = cursor.fetchall()

        conn.close()

        if tables:
            os.remove(db_path)

    conn = sqlite3.connect(db_path)
    conn.close()
