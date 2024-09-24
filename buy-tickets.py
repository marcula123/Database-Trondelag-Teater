import sqlite3

conn = sqlite3.connect("teater.db")
cursor = conn.cursor()

def buy_tickets(forestilling_tid, stykke_id, antall_billetter):
    pris_per_billett = None 

    sql_find_price = """
    SELECT Pris FROM BillettType
    WHERE TypeNavn = 'Ordinaer' AND StykkeID = :stykke_id;
    """

    cursor.execute(sql_find_price, {"stykke_id": stykke_id})
    result = cursor.fetchone()
            
    if result:
        pris_per_billett = result[0]

    totalpris = antall_billetter * pris_per_billett

    
    # SQL for å finne og kjøpe 9 ledige billetter for gitt forestilling

    sql_find_tickets = """
    WITH LedigeBilletter AS (
        SELECT RadNr, Omrade, COUNT(*) AS AntallLedige
        FROM Billett
        WHERE BillettID NOT IN (
            SELECT BillettID
            FROM KjoptBillettMedType
        ) AND StykkeID = :stykke_id AND ForestillingTid = :forestilling_tid
        GROUP BY RadNr, Omrade
        HAVING AntallLedige >= :antall_billetter
    ),
    KvalifiserteBilletter AS (
        SELECT B.BillettID, B.StolNr, B.RadNr, B.Omrade -- , B.StykkeID, B.ForestillingTid, B.TeaterSalID, AntallLedige
        FROM Billett B
        JOIN LedigeBilletter LB USING (RadNr, Omrade)
        WHERE B.BillettID NOT IN (
            SELECT BillettID
            FROM KjoptBillettMedType
        ) AND B.StykkeID = :stykke_id AND B.ForestillingTid = :forestilling_tid
    )
    SELECT * FROM KvalifiserteBilletter
    LIMIT :antall_billetter;
    """
    
    cursor.execute(sql_find_tickets, {"antall_billetter": antall_billetter, "stykke_id": stykke_id, "forestilling_tid": forestilling_tid})
    result = cursor.fetchall()

    sql_buy_ticket = "INSERT INTO KjoptBillettMedType (KjopsID, BillettID, StykkeID, TypeNavn) VALUES (1, ?, ?, 'Ordinaer');"
    
    if result:
        for line in result:
            billett_id = line[0]
            cursor.execute(sql_buy_ticket, (billett_id, stykke_id))

            print(f"kjopt billett: Stol: {line[1]}, Rad: {line[2]}, Omrade: {line[3]}")


    print(f"Totalprisen for {antall_billetter} billetter ble: {totalpris} kr")
    

# Kjøp 9 billetter for forestillingen "Størst av alt er kjærligheten" den 3. februar
forestilling_tid = "2024-02-03 18:30:00"
stykke_id = 2
antall_billetter = 9
buy_tickets(forestilling_tid, stykke_id, antall_billetter)

conn.commit()
conn.close()

