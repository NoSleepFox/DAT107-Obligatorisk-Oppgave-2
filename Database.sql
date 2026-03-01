
-- Mulig template for databasen

create table MEDLEM (
    medlemsnummer INT PRIMARY KEY,
    fornavn VARCHAR(50),
    etternavn VARCHAR(50),
    telefonnummer VARCHAR(20),
    epost VARCHAR(100),
    postnummer VARCHAR(4),
    gatenavn VARCHAR(50),
    er_aktiv BOOLEAN,
    lag_id INT,
    FOREIGN KEY (lag_id) references LOKALLAG(lag_id)
);

create table LOKALLAG (
    lag_id INT PRIMARY KEY,
    lagnavn VARCHAR(100),
    leder_medlemsnummer INT,
    postnummer VARCHAR(4),
    gatenavn VARCHAR(50),
    FOREIGN KEY (leder_medlemsnummer) references MEDLEM(medlemsnummer)
);

create table BETALING (
    medlemsnummer INT,
    aar INT,
    PRIMARY KEY (medlemsnummer, aar),
    betalt BOOLEAN,
    betalingsdato DATE,
    FOREIGN KEY (medlemsnummer) references MEDLEM(medlemsnummer)
);