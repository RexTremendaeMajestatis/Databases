OPTIONS (SKIP=1)
LOAD DATA CHARACTERSET UTF8
INFILE '/opt/loader/csv/STUDENTS.csv'
TRUNCATE
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  Score,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 1
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  Score,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 2
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  Score,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 3
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  Score,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 4
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  Score,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 5
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  Score,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 6
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  Score,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 7
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  Score,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 8
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  Score,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 9
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  Score,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 10
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  Score,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 11
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  Score,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 12
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  Score,
  voidScoreTest14 FILLER,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 13
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  Score,
  voidScoreTest15 FILLER,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 14
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  Score,
  voidScoreTest16 FILLER,
  Test_ID CONSTANT 15
)
INTO TABLE STUDENT_DB.STUDENT_TEST
FIELDS TERMINATED BY ';'
TRAILING NULLCOLS
(
  voidGroupID FILLER,
  Student_ID POSITION(7) INTEGER EXTERNAL TERMINATED BY ';' ,
  voidScoreTest1 FILLER,
  voidScoreTest2 FILLER,
  voidScoreTest3 FILLER,
  voidScoreTest4 FILLER,
  voidScoreTest5 FILLER,
  voidScoreTest6 FILLER,
  voidScoreTest7 FILLER,
  voidScoreTest8 FILLER,
  voidScoreTest9 FILLER,
  voidScoreTest10 FILLER,
  voidScoreTest11 FILLER,
  voidScoreTest12 FILLER,
  voidScoreTest13 FILLER,
  voidScoreTest14 FILLER,
  Score,
  Test_ID CONSTANT 16
)