DROP TABLE FILMS
/

CREATE TABLE FILMS (
    NAME varchar2(128),
    STARS number(2,0)
);
/

ALTER TABLE FILMS ADD CONSTRAINT FILM_RATING
CHECK (STARS >= 0 and STARS <= 10)
/

INSERT INTO FILMS VALUES ('Крёстный отец', 9)
/
INSERT INTO FILMS VALUES ('Как Витька чеснок вёз Лёху штыря в дом инвалидов', 10)
/
INSERT INTO FILMS VALUES ('Фиксики', 6)
/
INSERT INTO FILMS VALUES ('Служебный роман', 8)
/
INSERT INTO FILMS VALUES ('Ирония судьбы', 1)
/
INSERT INTO FILMS VALUES ('Драйв', 9)
/
INSERT INTO FILMS VALUES ('Убить Билла', 8)
/
INSERT INTO FILMS VALUES ('Куш', 8)
/

CREATE OR REPLACE FUNCTION ABOUT_ME
RETURN
    VARCHAR2
IS
    info VARCHAR2(128);
BEGIN
	info := 'Кузов Павел Александрович 20.01.1999, 21.М07-мм';
    RETURN info;
END ABOUT_ME;
/

GRANT SELECT ON FILMS TO PUBLIC
/
GRANT EXECUTE ON ABOUT_ME TO PUBLIC
/

SELECT NAME, STARS, ABOUT_ME() from FILMS 
/
SELECT NAME, STARS, WKSP_GADJET.ABOUT_ME() FROM WKSP_GADJET.FILMS
/
SELECT NAME, STARS, WKSP_MSEDLYARSKIY.ABOUT_ME() FROM WKSP_MSEDLYARSKIY.FILMS
/
SELECT NAME, STARS, WKSP_DBMSHW.ABOUT_ME() FROM WKSP_DBMSHW.FILMS
/