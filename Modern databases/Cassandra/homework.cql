DROP TABLE JOURNAL;

CREATE TABLE JOURNAL (
    ID INT PRIMARY KEY,
    STUDENT TEXT,
    SUBJECT TEXT,
    MARK INT
);

INSERT INTO  JOURNAL(ID, STUDENT, SUBJECT, MARK) VALUES (1, 'Pavel Kizhnerov', 'Applied energistics', 5);
INSERT INTO  JOURNAL(ID, STUDENT, SUBJECT, MARK) VALUES (2, 'Pavel Kizhnerov', 'Data structures', 2);

SELECT * FROM JOURNAL;

INSERT INTO  JOURNAL(ID, STUDENT, SUBJECT) VALUES (3, 'Pavel Kizhnerov', 'Machine learning');

SELECT * FROM JOURNAL;

SELECT * FROM system_schema.columns
WHERE keyspace_name = 'test' AND table_name = 'journal'
