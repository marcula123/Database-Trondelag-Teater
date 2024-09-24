
-- INFO: Hadde vært mer hensiktsmessig å bruke python for looping og å unngå manuelt å holde styr på rader --

-- Legger til en person som blir direktør
INSERT INTO Person (Pnr, Navn, Epost) VALUES (1, 'Direktor Navnesen', 'direktorn@teateret.no');

-- Gjør personen til en ansatt
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (1, 'Fulltid');

-- Oppretter et teater med Navnesen (Pnr 1) som direktør
INSERT INTO Teater (Navn, DirektorPnr) VALUES ('Trøndelag Teater', 1);
INSERT INTO AnsattITeater (AnsattPnr, TeaterID) VALUES (1, 1);

-- Oppretter to teatersaler --
INSERT INTO TeaterSal (TeaterSalID, Navn) VALUES (1, 'Hovedscenen');
INSERT INTO TeaterSal (TeaterSalID, Navn) VALUES (2, 'Gamle Scene');

-- Oppretter en sesong for teaterstykkene
INSERT INTO Sesong (SesongNavn) VALUES ('vinter/vår 2024');

-- Legger til et teaterstykke Kongsemnene
INSERT INTO Teaterstykke (StykkeID, Navn, ForfatterNavn, SesongNavn, TeaterSalID) VALUES ( 1, 'Kongsemnene', 'Henrik Ibsen', 'vinter/vår 2024', 1);

-- Legger til forestillinger for 'Kongsemnene'
INSERT INTO Forestilling (StykkeID, Tid) VALUES (1, '2024-02-01 19:00:00');
INSERT INTO Forestilling (StykkeID, Tid) VALUES (1, '2024-02-02 19:00:00');
INSERT INTO Forestilling (StykkeID, Tid) VALUES (1, '2024-02-03 19:00:00');
INSERT INTO Forestilling (StykkeID, Tid) VALUES (1, '2024-02-05 19:00:00');
INSERT INTO Forestilling (StykkeID, Tid) VALUES (1, '2024-02-06 19:00:00');

-- Legger til akter
INSERT INTO Akt (StykkeID, AktNr) VALUES (1, 1);
INSERT INTO Akt (StykkeID, AktNr) VALUES (1, 2);
INSERT INTO Akt (StykkeID, AktNr) VALUES (1, 3);
INSERT INTO Akt (StykkeID, AktNr) VALUES (1, 4);
INSERT INTO Akt (StykkeID, AktNr) VALUES (1, 5);

-- Legger til Roller med skuespillere for Kongsemnene (1) --
INSERT INTO Rolle (RolleID, Navn) VALUES (1, 'Haakon Haakonssønn');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 1, 1);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 2, 1);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 3, 1);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 4, 1);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 5, 1);
INSERT INTO Person (Pnr, Navn) VALUES (2, 'Arturo Scotti');
INSERT INTO Skuespiller (Pnr) VALUES (2);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (1, 2);

INSERT INTO Rolle (RolleID, Navn) VALUES (2, 'Inga fra Vartejg (Haakons mor)');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 1, 2);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 3, 2);
INSERT INTO Person (Pnr, Navn) VALUES (3, 'Ingunn Beate Strige Øyen');
INSERT INTO Skuespiller (Pnr) VALUES (3);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (2, 3);

INSERT INTO Rolle (RolleID, Navn) VALUES (3, 'Skule jarl');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 1, 3);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 3, 3);
INSERT INTO Person (Pnr, Navn) VALUES (4, 'Hans Petter Nilsen');
INSERT INTO Skuespiller (Pnr) VALUES (4);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (3, 4);

INSERT INTO Rolle (RolleID, Navn) VALUES (4, 'Fru Ragnhild (Skules hustru)');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 1, 4);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 5, 4);
INSERT INTO Person (Pnr, Navn) VALUES (5, 'Madeleine Brandtzæg Nilsen');
INSERT INTO Skuespiller (Pnr) VALUES (5);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (4, 5);

INSERT INTO Rolle (RolleID, Navn) VALUES (5, 'Margrete (Skules datter)');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 1, 5);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 5, 5);
INSERT INTO Person (Pnr, Navn) VALUES (6, 'Synnøve Fossum Eriksen');
INSERT INTO Skuespiller (Pnr) VALUES (6);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (5, 6);

INSERT INTO Rolle (RolleID, Navn) VALUES (6, 'Sigrid (Skules søster)');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 1, 6);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 2, 6);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 5, 6);
INSERT INTO Person (Pnr, Navn) VALUES (7, 'Emma Caroline Deichmann');
INSERT INTO Skuespiller (Pnr) VALUES (7);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (6, 7);

INSERT INTO Rolle (RolleID, Navn) VALUES (7, 'Ingebjørg');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 4, 7);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (7, 7);

INSERT INTO Rolle (RolleID, Navn) VALUES (8, 'Biskop Nikolas');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 1, 8);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 2, 8);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 3, 8);
INSERT INTO Person (Pnr, Navn) VALUES (8, 'Thomas Jensen Takyi');
INSERT INTO Skuespiller (Pnr) VALUES (8);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (8, 8);

INSERT INTO Rolle (RolleID, Navn) VALUES (9, 'Gregorius Jonssønn');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 1, 9);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 2, 9);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 3, 9);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 4, 9);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 5, 9);
INSERT INTO Person (Pnr, Navn) VALUES (9, 'Per Bogstad Gulliksen');
INSERT INTO Skuespiller (Pnr) VALUES (9);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (9, 9);

INSERT INTO Rolle (RolleID, Navn) VALUES (10, 'Paal Flida');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 1, 10);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 2, 10);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 3, 10);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 4, 10);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 5, 10);
INSERT INTO Person (Pnr, Navn) VALUES (10, 'Isak Holmen Sørensen');
INSERT INTO Skuespiller (Pnr) VALUES (10);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (10, 10);

INSERT INTO Rolle (RolleID, Navn) VALUES (11, 'Baard Bratte');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 1, 11);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 2, 11);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 3, 11);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 4, 11);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 5, 11);
INSERT INTO Person (Pnr, Navn) VALUES (11, 'Fabian Heidelberg Lunde');
INSERT INTO Skuespiller (Pnr) VALUES (11);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (11, 11);

-- Står trønder og på nettsiden på Per og Fabian, men finner ikke mer info om hvilke akter --

INSERT INTO Rolle (RolleID, Navn) VALUES (12, 'Jatgeir Skald');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 4, 12);
INSERT INTO Person (Pnr, Navn) VALUES (12, 'Emil Olafsson');
INSERT INTO Skuespiller (Pnr) VALUES (12);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (12, 12);

INSERT INTO Rolle (RolleID, Navn) VALUES (13, 'Dagfinn Bonde');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 1, 13);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 2, 13);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 3, 13);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 4, 13);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 5, 13);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (13, 12);

INSERT INTO Rolle (RolleID, Navn) VALUES (14, 'Peter (prest og Ingebjørgs sønn)');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 3, 14);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 4, 14);
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (1, 5, 14);
INSERT INTO Person (Pnr, Navn) VALUES (13, 'Snorre Ryen Tøndel');
INSERT INTO Skuespiller (Pnr) VALUES (13);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (14, 13);

-- Legger til et teaterstykke Størst av alt er kjærligheten
INSERT INTO Teaterstykke (StykkeID, Navn, ForfatterNavn, SesongNavn, TeaterSalID) VALUES (2, 'Størst av alt er kjærligheten', 'Jonas Corell Petersen ', 'vinter/vår 2024', 2);

-- Legger til forestillinger for 'Størst av alt er kjærligheten'
INSERT INTO Forestilling (StykkeID, Tid) VALUES (2, '2024-02-03 18:30:00');
INSERT INTO Forestilling (StykkeID, Tid) VALUES (2, '2024-02-06 18:30:00');
INSERT INTO Forestilling (StykkeID, Tid) VALUES (2, '2024-02-07 18:30:00');
INSERT INTO Forestilling (StykkeID, Tid) VALUES (2, '2024-02-12 18:30:00');
INSERT INTO Forestilling (StykkeID, Tid) VALUES (2, '2024-02-13 18:30:00');
INSERT INTO Forestilling (StykkeID, Tid) VALUES (2, '2024-02-14 18:30:00');

-- Legger til akter
INSERT INTO Akt (StykkeID, AktNr) VALUES (2, 1);


-- Legger til Roller med skuespillere for Størst av alt er kjærlighet --


INSERT INTO Rolle (RolleID, Navn) VALUES (15, 'Sunniva Du Mond Nordal');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID)VALUES (2, 1, 15);
INSERT INTO Person (Pnr, Navn) VALUES (14, 'Sunniva Du Mond Nordal');
INSERT INTO Skuespiller (Pnr) VALUES (14);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (15, 14);

INSERT INTO Rolle (RolleID, Navn) VALUES (16, 'Jo Saberniak');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID) VALUES (2, 1, 16);
INSERT INTO Person (Pnr, Navn) VALUES (15, 'Jo Saberniak');
INSERT INTO Skuespiller (Pnr) VALUES (15);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (16, 15);

INSERT INTO Rolle (RolleID, Navn) VALUES (17, 'Marte M. Steinholt');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID)VALUES (2, 1, 17);
INSERT INTO Person (Pnr, Navn) VALUES (16, 'Marte M. Steinholt');
INSERT INTO Skuespiller (Pnr) VALUES (16);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (17, 16);

INSERT INTO Rolle (RolleID, Navn) VALUES (18, 'Tor Ivar Hagen');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID)VALUES (2, 1, 18);
INSERT INTO Person (Pnr, Navn) VALUES (17, 'Tor Ivar Hagen');
INSERT INTO Skuespiller (Pnr) VALUES (17);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (18, 17);

INSERT INTO Rolle (RolleID, Navn) VALUES (19, 'Trond-Ove Skrødal');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID)VALUES (2, 1, 19);
INSERT INTO Person (Pnr, Navn) VALUES (18, 'Trond-Ove Skrødal');
INSERT INTO Skuespiller (Pnr) VALUES (18);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (19, 18);

INSERT INTO Rolle (RolleID, Navn) VALUES (20, 'Natalie Grøndahl Tangen');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID)VALUES (2, 1, 20);
INSERT INTO Person (Pnr, Navn) VALUES (19, 'Natalie Grøndahl Tangen');
INSERT INTO Skuespiller (Pnr) VALUES (19);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (20, 19);

INSERT INTO Rolle (RolleID, Navn) VALUES (21, 'Åsmund Flaten');
INSERT INTO RolleIAkt (StykkeID, AktNr, RolleID)VALUES (2, 1, 21);
INSERT INTO Person (Pnr, Navn) VALUES (20, 'Åsmund Flaten');
INSERT INTO Skuespiller (Pnr) VALUES (20);
INSERT INTO Spiller (RolleID, SkuespillerPnr) VALUES (21, 20);


-- legger til ansatte Kongsemnene (1) --
-- Yury Butusov: Regi og musikkutvelgelse
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Regi');
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Musikkutvelgelse');
INSERT INTO Person(Pnr, Navn) VALUES (21, 'Yury Butusov');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (21, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr,OppgaveNavn,StykkeID) VALUES (21, 'Regi', 1);
INSERT INTO HarOppgave(AnsattPnr,OppgaveNavn,StykkeID) VALUES (21, 'Musikkutvelgelse', 1);

-- Aleksandr Shishkin-Hokusai: Scenografi og kostymer
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Scenografi');
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Kostymer');
INSERT INTO Person(Pnr, Navn) VALUES (22, 'Aleksandr Shishkin-Hokusai');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (22, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr,OppgaveNavn,StykkeID) VALUES (22, 'Scenografi', 1);
INSERT INTO HarOppgave(AnsattPnr,OppgaveNavn,StykkeID) VALUES (22, 'Kostymer', 1);

-- Eivind Myren: Lysdesign
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Lysdesign');
INSERT INTO Person(Pnr, Navn) VALUES (23, 'Eivind Myren');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (23, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr,OppgaveNavn,StykkeID) VALUES (23, 'Lysdesign', 1);

-- Mina Rype Stokke: Dramaturg
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Dramaturg');
INSERT INTO Person(Pnr, Navn) VALUES (24, 'Mina Rype Stokke');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (24, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr,OppgaveNavn,StykkeID) VALUES (24, 'Dramaturg', 1);

-- Randi Andersen Gafseth og Emily F. Luthentun: Inspisient
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Inspisient');
INSERT INTO Person(Pnr, Navn) VALUES (25, 'Randi Andersen Gafseth'), (26, 'Emily F. Luthentun');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (25, 'Fulltid'), (26, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (25, 'Inspisient', 1), (26, 'Inspisient', 1);

-- Ann Eli Aasgård: Sufflør
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Sufflør');
INSERT INTO Person(Pnr, Navn) VALUES (27, 'Ann Eli Aasgård');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (27, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (27, 'Sufflør', 1);

-- Marianne Aunvik: Maskeansvarlig
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Maskeansvarlig');
INSERT INTO Person(Pnr, Navn) VALUES (28, 'Marianne Aunvik');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (28, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (28, 'Maskeansvarlig', 1);

-- Martin Didrichsen: Teknisk koordinator
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Teknisk koordinator');
INSERT INTO Person(Pnr, Navn) VALUES (29, 'Martin Didrichsen');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (29, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (29, 'Teknisk koordinator', 1);

-- Are Skarra Kvitnes: Lysmester
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Lysmester');
INSERT INTO Person(Pnr, Navn) VALUES (30, 'Are Skarra Kvitnes');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (30, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (30, 'Lysmester', 1);

-- Roger Indgul: Lysbordoperatør
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Lysbordoperatør');
INSERT INTO Person(Pnr, Navn) VALUES (31, 'Roger Indgul');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (31, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (31, 'Lysbordoperatør', 1);

-- Anders Schille: Lyddesign
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Lyddesign');
INSERT INTO Person(Pnr, Navn) VALUES (32, 'Anders Schille');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (32, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (32, 'Lyddesign', 1);

-- Oliver Løding og Harald Soltvedt: Lydbordoperatør
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Lydbordoperatør');
INSERT INTO Person(Pnr, Navn) VALUES (33, 'Oliver Løding'), (34, 'Harald Soltvedt');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (33, 'Fulltid'), (34, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (33, 'Lydbordoperatør', 1), (34, 'Lydbordoperatør', 1);

-- Karl-Martin Hoddevik: Rekvisittansvarlig
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Rekvisittansvarlig');
INSERT INTO Person(Pnr, Navn) VALUES (35, 'Karl-Martin Hoddevik');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (35, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (35, 'Rekvisittansvarlig', 1);

-- Geir Dyrdal: Sceneansvarlig
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Sceneansvarlig');
INSERT INTO Person(Pnr, Navn) VALUES (36, 'Geir Dyrdal');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (36, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (36, 'Sceneansvarlig', 1);

-- Trine Bjørhusdal: Stykkeansvarlig kostyme
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Stykkeansvarlig kostyme');
INSERT INTO Person(Pnr, Navn) VALUES (37, 'Trine Bjørhusdal');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (37, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (37, 'Stykkeansvarlig kostyme', 1);

-- Renee Desmond: Stykkeansvarlig påkledere 
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Stykkeansvarlig påkledere');
INSERT INTO Person(Pnr, Navn) VALUES (38, 'Renee Desmond');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (38, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (38, 'Stykkeansvarlig påkledere', 1);

-- Charlotta Winger: Tapetserer
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Tapetserer');
INSERT INTO Person(Pnr, Navn) VALUES (39, 'Charlotta Winger');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (39, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (39, 'Tapetserer', 1);

-- Egil Buseth: Snekker
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Snekker');
INSERT INTO Person(Pnr, Navn) VALUES (40, 'Egil Buseth');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (40, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (40, 'Snekker', 1);

-- Per Arne Johansen: Metallarbeider
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Metallarbeider');
INSERT INTO Person(Pnr, Navn) VALUES (41, 'Per Arne Johansen');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (41, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (41, 'Metallarbeider', 1);

-- Toril Skipnes og Anita Gundersen: Malersal
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Malersal');
INSERT INTO Person(Pnr, Navn) VALUES (42, 'Toril Skipnes'), (43, 'Anita Gundersen');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (42, 'Fulltid'), (43, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (42, 'Malersal', 1), (43, 'Malersal', 1);


-- Legger til Ansatte Størst av alt er kjærligheten (2) --
-- Jonas Corell Petersen: Regi
INSERT INTO Person(Pnr, Navn) VALUES (44, 'Jonas Corell Petersen');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (44, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (44, 'Regi', 2);

-- David Gehrt: Scenografi og kostymer
INSERT INTO Person(Pnr, Navn) VALUES (45, 'David Gehrt');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (45, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (45, 'Scenografi', 2);
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (45, 'Kostymer', 2);

-- Gaute Tønder: Musikalsk ansvarlig
-- Anta at "Musikalsk ansvarlig" ikke tidligere er lagt til i Oppgave-tabellen, legger den til her
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Musikalsk ansvarlig');
INSERT INTO Person(Pnr, Navn) VALUES (46, 'Gaute Tønder');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (46, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (46, 'Musikalsk ansvarlig', 2);

-- Magnus Mikaelsen: Lysdesign
INSERT INTO Person(Pnr, Navn) VALUES (47, 'Magnus Mikaelsen');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (47, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (47, 'Lysdesign', 2);

-- Kristoffer Spender: Dramaturg
INSERT INTO Person(Pnr, Navn) VALUES (48, 'Kristoffer Spender');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (48, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (48, 'Dramaturg', 2);


-- Line Åmli: Inspisient
INSERT INTO Person(Pnr, Navn) VALUES (49, 'Line Åmli');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (49, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (49, 'Inspisient', 2);

-- Lars Magnus Krogh Utne: Sufflør
INSERT INTO Person(Pnr, Navn) VALUES (50, 'Lars Magnus Krogh Utne');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (50, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (50, 'Sufflør', 2);

-- Livinger Ferner Diesen: Maskeansvarlig
INSERT INTO Person(Pnr, Navn) VALUES (51, 'Livinger Ferner Diesen');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (51, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (51, 'Maskeansvarlig', 2);

-- Espen Høyem: Stykkeansvarlig rekvisitt
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Stykkeansvarlig rekvisitt');
INSERT INTO Person(Pnr, Navn) VALUES (52, 'Espen Høyem');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (52, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (52, 'Stykkeansvarlig rekvisitt', 2);

-- Kjersti Eckhoff: Stykkeansvarlig kostyme
INSERT INTO Person(Pnr, Navn) VALUES (53, 'Kjersti Eckhoff');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (53, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (53, 'Stykkeansvarlig kostyme', 2);

-- Ida Marie Brønstad: Stykkeansvarlig påkledere (finnes oppgave allerede)
INSERT INTO Person(Pnr, Navn) VALUES (54, 'Ida Marie Brønstad');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (54, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (54, 'Stykkeansvarlig påkledere', 2);

-- Jan Magne Høynes / Siril Gaare: Lyddesign
-- Anta at disse to jobber sammen på denne oppgaven
INSERT INTO Person(Pnr, Navn) VALUES (55, 'Jan Magne Høynes'), (56, 'Siril Gaare');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (55, 'Fulltid'), (56, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (55, 'Lyddesign', 2), (56, 'Lyddesign', 2);

-- Stein Jørgen Øien: Videodesign
INSERT INTO Oppgave(OppgaveNavn) VALUES ('Videodesign');
INSERT INTO Person(Pnr, Navn) VALUES (57, 'Stein Jørgen Øien');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (57, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (57, 'Videodesign', 2);

-- Steffen Telstad: Lysbordoperatør
INSERT INTO Person(Pnr, Navn) VALUES (58, 'Steffen Telstad');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (58, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (58, 'Lysbordoperatør', 2);

-- Erik Chan: Sceneansvarlig
INSERT INTO Person(Pnr, Navn) VALUES (59, 'Erik Chan');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (59, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (59, 'Sceneansvarlig', 2);

-- Olav Rui: Snekker
-- Anta Olav er ny og ikke tidligere lagt til
INSERT INTO Person(Pnr, Navn) VALUES (60, 'Olav Rui');
INSERT INTO Ansatt (Pnr, AnsattStatus) VALUES (60, 'Fulltid');
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (60, 'Snekker', 2);

-- Per Arne Johansen: Metallarbeider, allerede lagt til så vi bare knytter han til nytt stykke
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (41, 'Metallarbeider', 2);

-- Toril Skipnes og Anita Gundersen: Malersal, allerede lagt til så vi bare knytter dem til nytt stykke
INSERT INTO HarOppgave(AnsattPnr, OppgaveNavn, StykkeID) VALUES (42, 'Malersal', 2), (43, 'Malersal', 2);


-- Legg til BillettTyper
INSERT INTO BillettType(StykkeID, TypeNavn, Pris) VALUES (1, "Ordinaer", 450);
INSERT INTO BillettType(StykkeID, TypeNavn, Pris) VALUES (1, "Honnor", 380);
INSERT INTO BillettType(StykkeID, TypeNavn, Pris) VALUES (1, "Student", 280);
INSERT INTO BillettType(StykkeID, TypeNavn, Pris) VALUES (1, "Gruppe 10", 420);
INSERT INTO BillettType(StykkeID, TypeNavn, Pris) VALUES (1, "Gruppe Honnor 10", 460);

INSERT INTO BillettType(StykkeID, TypeNavn, Pris) VALUES (2, "Ordinaer", 350);
INSERT INTO BillettType(StykkeID, TypeNavn, Pris) VALUES (2, "Honnor", 300);
INSERT INTO BillettType(StykkeID, TypeNavn, Pris) VALUES (2, "Student", 220);
INSERT INTO BillettType(StykkeID, TypeNavn, Pris) VALUES (2, "Barn", 200);
INSERT INTO BillettType(StykkeID, TypeNavn, Pris) VALUES (2, "Gruppe 10", 320);
INSERT INTO BillettType(StykkeID, TypeNavn, Pris) VALUES (2, "Gruppe Honnor 10", 270);

-- Legg til standardkunde og et billettkjop 
INSERT INTO Kunde (TlfNr, Navn, Adresse) VALUES ('999 99 999', 'Ola Nordmann', "Gloshaugen");
INSERT INTO Billettkjop (KjopsID, Tid, KundeTlfNr) VALUES (1, '2024-01-01 12:00:00', '999 99 999');