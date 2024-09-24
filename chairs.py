import sqlite3


def insert_chairs_and_tickets(teater_sal_id, stykke_id, file_path):
    sql_inserts = []
    timestamp = None
    area = ''
    rad_nr = 0  

    with open(file_path, 'r') as file:
        for line in file:
            line = line.strip()

            # Dato
            if "Dato" in line:
                
                performance_date = line.split(' ')[1]

                # Finn timestamp for første forestillingen med dato lik performance_date
                query = """
                    SELECT Tid FROM Forestilling
                    WHERE StykkeID = ? AND Tid LIKE ?
                    ORDER BY Tid ASC
                    LIMIT 1;
                """
                cursor.execute(query, (stykke_id, performance_date + '%'))
                result = cursor.fetchone()
                
                if result:
                    timestamp = result[0]

            
            elif line.isalpha():
                area = line
                rad_nr = 0  

            else:
                rad_nr += 1  
                for stol_nr, seat in enumerate(line, start=1):
                    # Legg til stol
                    cursor.execute("INSERT INTO Stol (TeaterSalID, RadNr, StolNr, Omrade) VALUES (?, ?, ?, ?);", (teater_sal_id, rad_nr, stol_nr, area))
                    # Legg til billett i første forestilling
                    if timestamp: 
                        if seat == '1':
                            cursor.execute(
                                "INSERT INTO Billett (TeaterSalID, RadNr, StolNr, Omrade, StykkeID, ForestillingTid) VALUES (?, ?, ?, ?, ?, ?);", (teater_sal_id, rad_nr, stol_nr, area, stykke_id, timestamp)
                            )
                            cursor.execute(
                                "INSERT INTO KjoptBillettMedType (KjopsID, BillettID, StykkeID, TypeNavn) VALUES (1, ?, ?, 'Ordinaer');", (cursor.lastrowid, stykke_id)
                            )
                        elif seat == '0':
                            cursor.execute(
                                "INSERT INTO Billett (TeaterSalID, RadNr, StolNr, Omrade, StykkeID, ForestillingTid) VALUES (?, ?, ?, ?, ?, ?);", (teater_sal_id, rad_nr, stol_nr, area, stykke_id, timestamp)
                            )


    return sql_inserts

# Kjør funksjonen med verdier
teater_sal_id_1 = 1  
teater_sal_id_2= 2  
stykke_id_1 = 1 
stykke_id_2 = 2
file_path_1 = 'hovedscenen.txt'  
file_path_2 = 'gamle-scene.txt'  
database_file = 'teater.db'  

conn = sqlite3.connect(database_file)
cursor = conn.cursor()


insert_chairs_and_tickets(teater_sal_id_1, stykke_id_1, file_path_1)
insert_chairs_and_tickets(teater_sal_id_2, stykke_id_2, file_path_2)

conn.commit()
conn.close()

