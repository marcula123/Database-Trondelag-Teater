import sqlite3

def print_all_tables(db_path):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    tables = cursor.fetchall()
    
    # Gå gjennom hver tabell og skriv ut innholdet
    for table_name in tables:
        table = table_name[0]
        print(f"--- Innhold i tabellen: {table} ---")
        
        # Hent og skriv ut alle rader fra tabellen
        cursor.execute(f"SELECT * FROM {table};")
        rows = cursor.fetchall()
        
        cursor.execute(f"PRAGMA table_info({table});")
        columns = [description[1] for description in cursor.fetchall()]
        print(f"Kolonner: {', '.join(columns)}")
        
        if rows:
            for row in rows:
                print(row)
        else:
            print("Ingen rader.")
        print("\n")  
    
    conn.close()


db_path = 'teater.db'


print_all_tables(db_path)
