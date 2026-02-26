
-- Mulig template for databasen

create table medlem (
    medlemsnummer,
    fornavn,
    etternavn,
    telefonnummer,
    epost,
    postnummer/sted,
    gatenavn/husnummer,
    er_aktiv,
    lag_id
);

create table lokallag (
    lag_id,
    lag_navn,
    leder,
    postnummer/sted,
    gatenavn/husnummer
);

create table medlemsavgift (
    medlemsnummer,
    aar,
    betalt
);