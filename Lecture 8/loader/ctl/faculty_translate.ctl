LOAD DATA CHARACTERSET UTF8
INFILE '/opt/loader/csv/FACULTIES_TRANSLATE.csv'
TRUNCATE
INTO TABLE STUDENT_DB.FACULTY_TRANSLATE
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  FACULTY_NAME_RU,
  FACULTY_NAME_EN
)