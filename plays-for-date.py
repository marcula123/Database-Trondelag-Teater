import sqlite3

conn = sqlite3.connect("teater.db")
cursor = conn.cursor()
"""
skriver ut hvilke forestillinger som finnes på denne datoen og lister
opp hvor mange billetter (dvs. stoler) som er solgt. Ta også med forestillinger
hvor det ikke er solgt noen billetter.

query som henter id til alle forestillinger for dato

query som henter count av rader fra kjøptbillettavtype som er for samme forestillingen.
"""
def plays_for_date(date):

    query = """
        SELECT T.Navn, F.Tid, (
            SELECT COUNT(*)
            FROM KjoptBillettMedType KBT
            JOIN Billett B USING (BillettID)
            WHERE B.StykkeID = F.StykkeID AND B.ForestillingTid = F.Tid
        ) AS BilletterSolgt
        FROM Forestilling F JOIN TeaterStykke T USING (StykkeID)
        WHERE F.Tid LIKE :date
        ORDER BY F.Tid ASC
        ;
    """
    cursor.execute(query, {"date": date+"%"})
    result = cursor.fetchall()
    for line in result:
        print(f"{line[0]}: ({line[1]}), {line[2]} solgte billetter")

import sys
date = "2024-02-03"
if (len(sys.argv)>1):
    date = sys.argv[1]

plays_for_date(date)

conn.commit()
conn.close()

