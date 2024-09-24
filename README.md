## Instruksjon

Tom database med navn "teater.db" ligger i mappa.

1. For å legge til skjemaene og verdiene for oppgave 1 skal man kjøre init.py
2. For å legge til stoler som en del av oppgave 2 så kjører man chairs.py
3. For å finne 9 ledige billetter på samme rad og kjøpe dem så kjører man buy-tickets.py
4. Oppgave 4: plays-for-date.py, python-funksjonen tar inn en dato-parameter på formatet YYYY-MM-DD. Optional dato som command-line-argument, ellers default til 2024-02-03
5. Oppgave 5: actors.py
6. Oppgave 6: best-seller.py
7. Oppgave 7: actors-in-same-play.py, python-funksjonen tar inn en navn-parameter. Optional navn som command-line-argument, ellers default til "Emil Olafsson"

## Antakelser

Vi valgte i oppg 1 å skrive all innsetting av data (utenom stoler) i en SQL fil, uten python.
Vi overveide også å skrive et python-script slik at vi kunne bruke autogenererte ID-er og lagre dem foreløpig i variabler under innlegging av data. Men vi tolket oppgaven som at SQL var foretrukket, så droppet dette og skriver id-er manuelt.

I SQL-scriptet valgte vi og en struktur på innsetting som virket oversiktlig for oss utviklere, ved å gruppere f eks rolle/oppgave, ansatt/skuespiller sammen med hver person, fremfor å i stedet legge alle inserts i samme tabell under hverandre som kunne gjort koden kortere slik:

    INSERT INTO 'tablename' ('column1', 'column2') VALUES
    ('data1', 'data2'),
    ('data1', 'data2'),
    ('data1', 'data2'),
    ('data1', 'data2');

Vi Legger ikke til tilgjengelige billetter for andre enn de forestillingene med fil. Dvs at i oppgave 4 finnes ingen billetter og ingen solgt.
Viser til diskusjon i piazza: https://piazza.com/class/lqxw1s1kut2341/post/575

Vår studentassistent sa at det var greit å ha queryene i pythonfiler som strenger i stedet for å lage separate .sql-filer for hver query.
