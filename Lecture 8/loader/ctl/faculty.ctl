LOAD DATA CHARACTERSET UTF8
INFILE '/opt/loader/csv/FACULTIES.csv'
TRUNCATE
INTO TABLE STUDENT_DB.FACULTY
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  FACULTY_LETTER,
  FACULTY_NAME_RU
)