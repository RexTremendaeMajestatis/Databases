LOAD DATA CHARACTERSET UTF8
INFILE '/opt/loader/csv/TESTS_TRANSLATE.csv'
TRUNCATE
INTO TABLE STUDENT_DB.TEST_TRANSLATE
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  TEST_NAME_RU,
  TEST_NAME_EN
)