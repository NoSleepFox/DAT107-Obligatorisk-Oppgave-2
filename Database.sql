
-- Mulig template for databasen

create table MEDLEM (
    medlemsnummer INT PRIMARY KEY,
    fornavn VARCHAR(50) NOT NULL,
    etternavn VARCHAR(50) NOT NULL,
    telefonnummer VARCHAR(20),
    epost VARCHAR(100),
    postnummer VARCHAR(4) NOT NULL,
    gatenavn VARCHAR(50) NOT NULL,
    er_aktiv BOOLEAN NOT NULL,
    lagnavn INT NOT NULL,
    FOREIGN KEY (lagnavn) references LOKALLAG(lagnavn)
);

create table LOKALLAG (
    lagnavn VARCHAR(100) PRIMARY KEY,
    leder_medlemsnummer INT NOT NULL,
    postnummer VARCHAR(4) NOT NULL,
    gatenavn VARCHAR(50) NOT NULL,
    FOREIGN KEY (leder_medlemsnummer) references MEDLEM(medlemsnummer)
);

create table BETALING (
    medlemsnummer INT NOT NULL,
    aar INT NOT NULL,
    PRIMARY KEY (medlemsnummer, aar),
    betalt BOOLEAN NOT NULL,
    betalingsdato DATE,
    FOREIGN KEY (medlemsnummer) references MEDLEM(medlemsnummer)
);