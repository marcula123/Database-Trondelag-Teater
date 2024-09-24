

import sqlite3

conn = sqlite3.connect("teater.db")
cursor = conn.cursor()
"""
 tar et skuespillernavn og finner
hvilke skuespilllere de har spilt med i samme akt. Skriv ut navn på begge og
hvilket skuespill det skjedde.
"""

def actors_in_same_play(name):

    query = """
        SELECT DISTINCT P1.Navn AS Skuespiller1, P2.Navn AS Skuespiller2, T.Navn AS TeaterstykkeNavn
        FROM Skuespiller S1
        JOIN Person P1 ON S1.Pnr = P1.Pnr
        JOIN Spiller SP1 ON S1.Pnr = SP1.SkuespillerPnr
        JOIN RolleIAkt RIA1 ON SP1.RolleID = RIA1.RolleID
        JOIN Akt A ON RIA1.StykkeID = A.StykkeID AND RIA1.AktNr = A.AktNr
        JOIN Teaterstykke T ON A.StykkeID = T.StykkeID
        JOIN RolleIAkt RIA2 ON A.StykkeID = RIA2.StykkeID AND A.AktNr = RIA2.AktNr
        JOIN Spiller SP2 ON RIA2.RolleID = SP2.RolleID
        JOIN Skuespiller S2 ON SP2.SkuespillerPnr = S2.Pnr
        JOIN Person P2 ON S2.Pnr = P2.Pnr
        WHERE P1.Navn = :name AND P2.Navn != :name
        ;
    """
    cursor.execute(query, {"name": name})
    result = cursor.fetchall()
    for line in result:
        print(f"{line[0]} spiller med {line[1]} i '{line[2]}'")

import sys
name = "Emil Olafsson"
if (len(sys.argv)>1):
    name = sys.argv[1]

actors_in_same_play(name)

conn.commit()
conn.close()

