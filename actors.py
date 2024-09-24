

import sqlite3

conn = sqlite3.connect("teater.db")
cursor = conn.cursor()
"""
(navn på) skuespillere som
opptrer i de forskjellige teaterstykkene. Skriv ut navn på teaterstykke, navn på
skuespiller og rolle.
"""

def actors():

    query = """
        SELECT DISTINCT P.Navn, T.Navn, R.Navn
        FROM Skuespiller S
        JOIN Person P USING (Pnr)
        JOIN Spiller SP ON S.Pnr = SP.SkuespillerPnr
        JOIN Rolle R USING (RolleID)
        JOIN RolleIAkt RIA USING (RolleID)
        JOIN Teaterstykke T ON RIA.StykkeID = T.StykkeID
        ;
    """
    cursor.execute(query)
    result = cursor.fetchall()
    for line in result:
        print(f"{line[0]} spiller {line[2]} i {line[1]}")

date = "2024-02-03"
actors()

conn.commit()
conn.close()

