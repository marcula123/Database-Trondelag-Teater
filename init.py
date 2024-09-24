import sqlite3
from reset import reset_database


def execute_sql_from_file(db_path, sql_file_path):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    with open(sql_file_path, 'r') as sql_file:
        sql_script = sql_file.read()
    
    cursor.executescript(sql_script)

    conn.commit()
    conn.close()


db_path = 'teater.db'
schema_file = 'schema.sql' 
insert_file = 'insert-theatre.sql'  

reset_database(db_path)

execute_sql_from_file(db_path, schema_file)

execute_sql_from_file(db_path, insert_file)


