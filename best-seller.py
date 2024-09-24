

import sqlite3

conn = sqlite3.connect("teater.db")
cursor = conn.cursor()
"""
(navn på) skuespillere som
opptrer i de forskjellige teaterstykkene. Skriv ut navn på teaterstykke, navn på
skuespiller og rolle.
"""

def bestseller():

    query = """
        SELECT Teaterstykke.Navn, Forestilling.Tid, COUNT(Billett.BillettID) AS AntallSolgteBilletter
        FROM Billett
        JOIN Forestilling ON Billett.ForestillingTid = Forestilling.Tid
        JOIN Teaterstykke ON Forestilling.StykkeID = Teaterstykke.StykkeID
        JOIN KjoptBillettMedType ON KjoptBillettMedType.BillettID = Billett.BillettID
        GROUP BY Teaterstykke.Navn, Forestilling.Tid
        ORDER BY COUNT(Billett.BillettID) DESC;
        
    """
    cursor.execute(query)
    result = cursor.fetchall()
    print("Navn på teaterstykke | Dato for forestilling | Antall solgte billetter")
    print("-" * 60)
    for row in result:
        print(f"{row[0]} | {row[1]} | {row[2]}")


bestseller()

conn.commit()
conn.close()

