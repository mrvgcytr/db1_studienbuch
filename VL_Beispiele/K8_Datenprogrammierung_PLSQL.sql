DROP TABLE quadrat;

-- Anlegen einer Tabelle zur
-- Abspeicherung der Quadratzahlen
CREATE TABLE quadrat (
n int,
nquadrat int );
DECLARE
-- Variablendeklaration
nmax CONSTANT INT:=100;
i INT:= 1;
BEGIN
-- Anfang des ausführbaren Abschnitts
-- Durchlaufen der Schleife zum Anlegen der Sätze
FOR i IN 1..nmax LOOP
INSERT INTO quadrat
(n , nquadrat)
VALUES
(i , i*i);
END LOOP;
COMMIT;
END;
-- Ende des ausführbaren Abschnitts

--------------------------------------

DROP TABLE sitzplan;

-- Neuanlegen der Tabelle sitzplan mit Primärschlüssel
CREATE TABLE sitzplan (
    platz_id NUMBER NOT NULL,
    kategorie VARCHAR2(20) NOT NULL,
    CONSTRAINT PK_sitzplan
    PRIMARY KEY (platz_id)
);

DECLARE
    i POSITIVE := 1;
    max_loops CONSTANT POSITIVE := 10;
BEGIN
    LOOP
        EXIT WHEN i > max_loops;
        dbms_output.put_line( 'Inside loop, round: ' || i )  ;
        INSERT INTO sitzplan -- Einfügen
        (platz_id, kategorie)
        VALUES (i, 'Erste Klasse'); -- neuer locations
        i := i+1;
    END LOOP;
END;


---------------------------

DROP TABLE sitzplan;

-- Neuanlegen der Tabelle sitzplan mit Primärschlüssel
CREATE TABLE sitzplan (
    platz_id NUMBER NOT NULL,
    kategorie VARCHAR2(20) NOT NULL,
    CONSTRAINT PK_sitzplan
    PRIMARY KEY (platz_id)
);

DECLARE
    i POSITIVE := 1;
    max_loops CONSTANT POSITIVE := 10;
BEGIN
    WHILE i<=max_loops LOOP
        dbms_output.put_line( 'Inside loop, round: ' || i )  ;
        INSERT INTO sitzplan -- Einfügen
        (platz_id, kategorie)
        VALUES (i, 'Zweite Klasse'); -- neuer locations
        i := i+1;
    END LOOP;
END;

--------------------------------

DROP TABLE sitzplan;

-- Neuanlegen der Tabelle sitzplan mit Primärschlüssel
CREATE TABLE sitzplan (
    platz_id NUMBER NOT NULL,
    kategorie VARCHAR2(20) NOT NULL,
    CONSTRAINT PK_sitzplan
    PRIMARY KEY (platz_id)
);

DECLARE
    i int:=1;
BEGIN
    IF (i>10) THEN
        NULL;
    ELSE
        dbms_output.put_line( 'Inside loop, round: ' || i )  ;
        INSERT INTO sitzplan -- Einfügen
        (platz_id, kategorie)
        VALUES (i, 'Dritte Klasse'); -- neuer locations
        i := i+1;
    END IF; 
END;

----------------------------------