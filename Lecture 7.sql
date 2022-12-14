ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

DROP USER DEVELOPER CASCADE;
CREATE USER DEVELOPER IDENTIFIED BY DEVELOPER;

GRANT CREATE SESSION TO DEVELOPER;
GRANT CREATE TABLE TO DEVELOPER;
GRANT UNLIMITED TABLESPACE TO DEVELOPER;

-------------------------------------------------------------------------------
ALTER SESSION SET CURRENT_SCHEMA = DEVELOPER;

CREATE TABLE SESSION_DATA (
    ID NUMBER CONSTRAINT ID_PK PRIMARY KEY,
    SUBJECT_RU VARCHAR(128),
    SUBJECT_EN VARCHAR(128),
    STUDENT_ID NUMBER,
    MODAL_MARK NUMBER CONSTRAINT MARK_BETWEEN_CHECK CHECK(MODAL_MARK BETWEEN 1 AND 5)
);

INSERT INTO SESSION_DATA VALUES (1, 'МАТЕМАТИКА', 'MATH', 1, 4);
INSERT INTO SESSION_DATA VALUES (2, 'РУССКИЙ ЯЗЫК', 'RUSSIAN', 1, 5);
INSERT INTO SESSION_DATA VALUES (3, 'АНГЛИЙСКИЙ ЯЗЫК', 'ENGLISH', 1, 3);
INSERT INTO SESSION_DATA VALUES (4, 'ФИЗИКА', 'PHYSICS', 1, 5);
INSERT INTO SESSION_DATA VALUES (5, 'ИНФОРМАТИКА', 'COMPUTER SCIENCE', 1, 4);
INSERT INTO SESSION_DATA VALUES (6, 'МАТЕМАТИКА', 'MATH', 2, 4);
INSERT INTO SESSION_DATA VALUES (7, 'РУССКИЙ ЯЗЫК', 'RUSSIAN', 2, 5);
INSERT INTO SESSION_DATA VALUES (8, 'АНГЛИЙСКИЙ ЯЗЫК', 'ENGLISH', 2, 3);
INSERT INTO SESSION_DATA VALUES (9, 'ФИЗИКА', 'PHYSICS', 2, 5);
INSERT INTO SESSION_DATA VALUES (10, 'ИНФОРМАТИКА', 'COMPUTER SCIENCE', 2, 4);

CREATE OR REPLACE VIEW VIEW_RU AS
    SELECT ID, SUBJECT_RU SUBJECT, STUDENT_ID, MODAL_MARK FROM SESSION_DATA;

CREATE OR REPLACE VIEW VIEW_EN AS
    SELECT ID, SUBJECT_EN SUBJECT, STUDENT_ID, MODAL_MARK FROM SESSION_DATA;

DROP USER USER_RU CASCADE;
CREATE USER USER_RU IDENTIFIED BY USER_RU;
GRANT CONNECT, RESOURCE TO USER_RU;

DROP USER USER_EN CASCADE;
CREATE USER USER_EN IDENTIFIED BY USER_EN;
GRANT CONNECT, RESOURCE TO USER_EN;

CREATE SYNONYM USER_RU.PUBLIC_JOURNAL FOR DEVELOPER.VIEW_RU;
CREATE SYNONYM USER_EN.PUBLIC_JOURNAL FOR DEVELOPER.VIEW_EN;

GRANT SELECT ON USER_RU.PUBLIC_JOURNAL TO USER_RU;
GRANT SELECT ON USER_EN.PUBLIC_JOURNAL TO USER_EN;

-------------------------------------------------------------------------------
ALTER SESSION SET CURRENT_SCHEMA = USER_RU;
SELECT * FROM USER_RU.PUBLIC_JOURNAL;

-------------------------------------------------------------------------------
ALTER SESSION SET CURRENT_SCHEMA = USER_EN;
SELECT * FROM USER_EN.PUBLIC_JOURNAL;

-------------------------------------------------------------------------------
ALTER SESSION SET CURRENT_SCHEMA = DEVELOPER;

DROP PROFILE DEF_PROFILE;

CREATE PROFILE DEF_PROFILE
LIMIT
SESSIONS_PER_USER 1
CPU_PER_CALL 300;

SELECT * FROM DBA_PROFILES WHERE PROFILE = 'DEF_PROFILE';

ALTER USER USER_EN PROFILE DEF_PROFILE;
ALTER USER USER_RU PROFILE DEF_PROFILE;