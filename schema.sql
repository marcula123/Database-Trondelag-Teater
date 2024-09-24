CREATE TABLE Person (
    Pnr INTEGER PRIMARY KEY,
    Navn TEXT,
    Epost TEXT
);

CREATE TABLE Kunde (
    TlfNr TEXT PRIMARY KEY,
    Navn TEXT,
    Adresse TEXT
);

CREATE TABLE Ansatt (
    Pnr INTEGER PRIMARY KEY,
    AnsattStatus TEXT,
    FOREIGN KEY (Pnr) REFERENCES Person(Pnr) ON DELETE CASCADE
);

CREATE TABLE Skuespiller (
    Pnr INTEGER PRIMARY KEY,
    FOREIGN KEY (Pnr) REFERENCES Person(Pnr) ON DELETE CASCADE
);

CREATE TABLE Teater (
    TeaterID INTEGER PRIMARY KEY,
    Navn TEXT,
    DirektorPnr INTEGER NOT NULL,
    FOREIGN KEY (DirektorPnr) REFERENCES Ansatt(Pnr)
);

CREATE TABLE AnsattITeater (
    TeaterID INTEGER,
    AnsattPnr INTEGER,
    FOREIGN KEY (TeaterID) REFERENCES Teater(TeaterID) ON DELETE CASCADE,
    FOREIGN KEY (AnsattPnr) REFERENCES Ansatt(Pnr) ON DELETE CASCADE,
    PRIMARY KEY (TeaterID, AnsattPnr)
);

CREATE TABLE TeaterSal (
    TeaterSalID INTEGER PRIMARY KEY,
    Navn TEXT
);

CREATE TABLE Stol (
    TeaterSalID INTEGER,
    RadNr INTEGER,
    StolNr INTEGER,
    Omrade TEXT,
    PRIMARY KEY (TeaterSalID, RadNr, StolNr, Omrade),
    FOREIGN KEY (TeaterSalID) REFERENCES TeaterSal(TeaterSalID) ON DELETE CASCADE
);

CREATE TABLE Sesong (
    SesongNavn TEXT PRIMARY KEY
);

CREATE TABLE Teaterstykke (
    StykkeID INTEGER PRIMARY KEY,
    Navn TEXT,
    ForfatterNavn TEXT,
    SesongNavn TEXT NOT NULL,
    TeaterSalID INTEGER NOT NULL,
    FOREIGN KEY (SesongNavn) REFERENCES Sesong(SesongNavn),
    FOREIGN KEY (TeaterSalID) REFERENCES TeaterSal(TeaterSalID)
);

CREATE TABLE Forestilling (
    StykkeID INTEGER,
    Tid TIMESTAMP,
    FOREIGN KEY (StykkeID) REFERENCES Teaterstykke(StykkeID) ON DELETE CASCADE,
    PRIMARY KEY (StykkeID, Tid)
);

CREATE TABLE Akt (
    StykkeID INTEGER,
    AktNr INTEGER,
    Navn TEXT,
    PRIMARY KEY (StykkeID, AktNr),
    FOREIGN KEY (StykkeID) REFERENCES Teaterstykke(StykkeID) ON DELETE CASCADE
);

CREATE TABLE Rolle (
    RolleID INTEGER PRIMARY KEY,
    Navn TEXT
);

CREATE TABLE RolleIAkt (
    StykkeID INTEGER,
    AktNr INTEGER,
    RolleID INTEGER,
    FOREIGN KEY (StykkeID, AktNr) REFERENCES Akt(StykkeID, AktNr) ON DELETE CASCADE,
    FOREIGN KEY (RolleID) REFERENCES Rolle(RolleID) ON DELETE CASCADE,
    PRIMARY KEY (StykkeID, AktNr, RolleID)
);

CREATE TABLE Spiller (
    RolleID INTEGER,
    SkuespillerPnr INTEGER,
    FOREIGN KEY (RolleID) REFERENCES Rolle(RolleID) ON DELETE CASCADE,
    FOREIGN KEY (SkuespillerPnr) REFERENCES Skuespiller(Pnr) ON DELETE CASCADE,
    PRIMARY KEY (RolleID, SkuespillerPnr)
);

CREATE TABLE Oppgave (
    OppgaveNavn TEXT PRIMARY KEY
);

CREATE TABLE HarOppgave (
    AnsattPnr INTEGER,
    OppgaveNavn TEXT,
    StykkeID INTEGER,
    FOREIGN KEY (AnsattPnr) REFERENCES Ansatt(Pnr) ON DELETE CASCADE,
    FOREIGN KEY (OppgaveNavn) REFERENCES Oppgave(OppgaveNavn) ON DELETE CASCADE,
    FOREIGN KEY (StykkeID) REFERENCES Teaterstykke(StykkeID) ON DELETE CASCADE,
    PRIMARY KEY (AnsattPnr, OppgaveNavn, StykkeID)
);

CREATE TABLE Billettkjop (
    KjopsID INTEGER PRIMARY KEY,
    Tid TIMESTAMP,
    KundeTlfNr TEXT NOT NULL,
    FOREIGN KEY (KundeTlfNr) REFERENCES Kunde(TlfNr)
);

CREATE TABLE Billett (
    BillettID INTEGER PRIMARY KEY,
    TeaterSalID INTEGER NOT NULL,
    RadNr INTEGER NOT NULL,
    StolNr INTEGER NOT NULL,
    Omrade TEXT NOT NULL,
    StykkeID INTEGER NOT NULL,
    ForestillingTid TIMESTAMP,
    FOREIGN KEY (TeaterSalID, RadNr, StolNr, Omrade) REFERENCES Stol(TeaterSalID, RadNr, StolNr, Omrade),
    FOREIGN KEY (StykkeID, ForestillingTid) REFERENCES Forestilling(StykkeID, Tid)
);

CREATE TABLE BillettType (
    StykkeID INTEGER,
    TypeNavn TEXT,
    Pris DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (StykkeID, TypeNavn),
    FOREIGN KEY (StykkeID) REFERENCES Teaterstykke(StykkeID) ON DELETE CASCADE
);

CREATE TABLE KjoptBillettMedType (
    KjopsID INTEGER,
    BillettID INTEGER,
    StykkeID INTEGER,
    TypeNavn TEXT,
    FOREIGN KEY (KjopsID) REFERENCES Billettkjop(KjopsID),
    FOREIGN KEY (BillettID) REFERENCES Billett(BillettID),
    FOREIGN KEY (StykkeID, TypeNavn) REFERENCES BillettType(StykkeID, TypeNavn),
    PRIMARY KEY (KjopsID, BillettID, StykkeID, TypeNavn)
);