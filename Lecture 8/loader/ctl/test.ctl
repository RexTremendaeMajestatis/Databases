OPTIONS (SKIP=2, LOAD=16)
LOAD DATA CHARACTERSET UTF8
INFILE '/opt/loader/csv/STUDENTS.csv' "str ';'"
TRUNCATE
INTO TABLE STUDENT_DB.TEST
FIELDS TERMINATED BY '\n'
TRAILING NULLCOLS
(
  TEST_NAME_RU"REPLACE(:TEST_NAME_RU, CHR(13), '')",
  TEST_ID SEQUENCE(MAX,1)
)