-- 4.1

CREATE OR REPLACE VIEW WINTER_HIRES AS
    SELECT EMPNO, ENAME FROM EMP
    WHERE TO_CHAR(HIREDATE, 'mm') = 12 OR TO_CHAR(HIREDATE, 'mm') = 1 OR TO_CHAR(HIREDATE, 'mm') = 2
/

CREATE OR REPLACE VIEW SUFFICIENT_EMP_CNT AS
SELECT ENAME FROM
(
    SELECT MGR, COUNT(ENAME) AS EMP_CNT FROM EMP
    GROUP BY MGR
) MANAGERS RIGHT JOIN EMP ON MANAGERS.MGR = EMP.EMPNO
WHERE EMP_CNT >= 3
/

-- 4.2

CREATE SEQUENCE DEPARTAMENTS_SEQ
MINVALUE 1
START WITH 50
INCREMENT BY 10
CACHE 20
/

SELECT DEPARTAMENTS_SEQ.NEXTVAL FROM DUAL
/

INSERT INTO DEPT_I(DEPTNO, DNAME, LOC)
VALUES (DEPARTAMENTS_SEQ.NEXTVAL, 'DEPARTMENT' || TO_CHAR(DEPARTAMENTS_SEQ.CURRVAL), 'MOSCOW')
/

INSERT INTO DEPT_I(DEPTNO, DNAME, LOC)
VALUES (DEPARTAMENTS_SEQ.NEXTVAL, 'DEPARTMENT' || TO_CHAR(DEPARTAMENTS_SEQ.CURRVAL), 'MOSCOW')
/

INSERT INTO DEPT_I(DEPTNO, DNAME, LOC)
VALUES (DEPARTAMENTS_SEQ.NEXTVAL, 'DEPARTMENT' || TO_CHAR(DEPARTAMENTS_SEQ.CURRVAL), 'MOSCOW')
/

INSERT INTO DEPT_I(DEPTNO, DNAME, LOC)
VALUES (DEPARTAMENTS_SEQ.NEXTVAL, 'DEPARTMENT' || TO_CHAR(DEPARTAMENTS_SEQ.CURRVAL), 'MOSCOW')
/

INSERT INTO DEPT_I(DEPTNO, DNAME, LOC)
VALUES (DEPARTAMENTS_SEQ.NEXTVAL, 'DEPARTMENT' || TO_CHAR(DEPARTAMENTS_SEQ.CURRVAL), 'MOSCOW')
/

INSERT INTO DEPT_I(DEPTNO, DNAME, LOC)
VALUES (DEPARTAMENTS_SEQ.NEXTVAL, 'DEPARTMENT' || TO_CHAR(DEPARTAMENTS_SEQ.CURRVAL), 'MOSCOW')
/

INSERT INTO DEPT_I(DEPTNO, DNAME, LOC)
VALUES (DEPARTAMENTS_SEQ.NEXTVAL, 'DEPARTMENT' || TO_CHAR(DEPARTAMENTS_SEQ.CURRVAL), 'MOSCOW')
/

INSERT INTO DEPT_I(DEPTNO, DNAME, LOC)
VALUES (DEPARTAMENTS_SEQ.NEXTVAL, 'DEPARTMENT' || TO_CHAR(DEPARTAMENTS_SEQ.CURRVAL), 'MOSCOW')
/

INSERT INTO DEPT_I(DEPTNO, DNAME, LOC)
VALUES (DEPARTAMENTS_SEQ.NEXTVAL, 'DEPARTMENT' || TO_CHAR(DEPARTAMENTS_SEQ.CURRVAL), 'MOSCOW')
/

INSERT INTO DEPT_I(DEPTNO, DNAME, LOC)
VALUES (DEPARTAMENTS_SEQ.NEXTVAL, 'DEPARTMENT' || TO_CHAR(DEPARTAMENTS_SEQ.CURRVAL), 'MOSCOW')
/

-- 4.3

CREATE OR REPLACE FUNCTION FACTORIAL (n IN NUMBER)
RETURN NUMBER
IS
    var_result NUMBER;
BEGIN
    IF n <= 1 THEN
        var_result := 1;
    ELSE
        var_result := n * FACTORIAL(n - 1);
    END IF;
    RETURN var_result;
END FACTORIAL;
/

SELECT FACTORIAL(5) FROM DUAL
/

CREATE OR REPLACE FUNCTION DIFFTIMEDATE (dt IN DATE)
RETURN NUMBER
IS
    var_result NUMBER;
BEGIN
    var_result := trunc(sysdate) - dt;
    RETURN var_result;
END DIFFTIMEDATE;
/

SELECT ENAME, DIFFTIMEDATE(HIREDATE) FROM EMP
/


CREATE OR REPLACE FUNCTION GET_MGR_NAMES_PRIVATE(EMPNO_ARG IN NUMBER)
RETURN VARCHAR2
IS
    MGR_NAMES_ACC VARCHAR2(200) := '';
BEGIN
    SELECT ENAME || ', ' || GET_MGR_NAMES_PRIVATE(MGR)
    INTO MGR_NAMES_ACC
    FROM EMP
    WHERE EMPNO = EMPNO_ARG;
    RETURN MGR_NAMES_ACC;
END GET_MGR_NAMES_PRIVATE;
/

CREATE OR REPLACE FUNCTION GET_MGR_NAMES(EMPNO_ARG IN NUMBER)
RETURN VARCHAR2
IS
    MGR_NAMES_ACC VARCHAR2(200) := '';
BEGIN
    SELECT GET_MGR_NAMES_PRIVATE(MGR)
    INTO MGR_NAMES_ACC
    FROM EMP
    WHERE EMPNO = EMPNO_ARG;
    RETURN MGR_NAMES_ACC;
END GET_MGR_NAMES;
/

SELECT EMPNO, MGR, ENAME, GET_MGR_NAMES(EMPNO) FROM EMP
/

-- 4.4

CREATE OR REPLACE PROCEDURE WORK_STATS(
    EMPS_COUNT OUT NUMBER,
    DEPTS_COUNT OUT NUMBER,
    JOBS_COUNT OUT NUMBER,
    TOTAL_SALARY OUT NUMBER
)
IS
BEGIN
    SELECT COUNT(*), SUM(SAL)
    INTO EMPS_COUNT, TOTAL_SALARY
    FROM EMP;

    SELECT COUNT(*)
    INTO DEPTS_COUNT
    FROM DEPT;

    SELECT COUNT(*)
    INTO JOBS_COUNT
    FROM (SELECT DISTINCT JOB FROM EMP);
END WORK_STATS;
/

DECLARE
EMPS_COUNT NUMBER;
DEPTS_COUNT NUMBER;
JOBS_COUNT NUMBER;
TOTAL_SALARY NUMBER;
BEGIN
    WORK_STATS(EMPS_COUNT, DEPTS_COUNT, JOBS_COUNT, TOTAL_SALARY);
    dbms_output.put_line('EMPS COUNT = ' || EMPS_COUNT);
    dbms_output.put_line('DEPTS COUNT = ' || DEPTS_COUNT);
    dbms_output.put_line('JOBS COUNT = ' || JOBS_COUNT);
    dbms_output.put_line('TOTAL SALARY: ' || TOTAL_SALARY);
END;
/

-- 4.5

CREATE SEQUENCE DEBUG_LOG_SEQ
/

CREATE TABLE DEBUG_LOG
(
ID NUMBER(3,0) NOT NULL,
LOG_TIME TIMESTAMP NOT NULL,
MESSAGE VARCHAR2(500),
IN_SOURCE VARCHAR2(50),
CONSTRAINT "DEBUG_LOG_PK" PRIMARY KEY (ID)
);
/

CREATE OR REPLACE PROCEDURE MIN_MAX_WORKER(
MIN_WORK_DATE OUT DATE,
MAX_WORK_DATE OUT DATE
)
IS
CUR_DATE DATE := SYSDATE;
BEGIN

SELECT CUR_DATE - MAX(CUR_DATE - HIREDATE), CUR_DATE - MIN(CUR_DATE - HIREDATE)
INTO MIN_WORK_DATE, MAX_WORK_DATE
FROM EMP;

END MIN_MAX_WORKER;
/

DECLARE
MIN_WORK_DATE DATE;
MAX_WORK_DATE DATE;
BEGIN
MIN_MAX_WORKER(MIN_WORK_DATE, MAX_WORK_DATE);

INSERT INTO DEBUG_LOG(ID, LOG_TIME, MESSAGE, IN_SOURCE)
VALUES (DEBUG_LOG_SEQ.NEXTVAL, CURRENT_TIMESTAMP, 'MIN_WORK_DATE =' || TO_CHAR(MIN_WORK_DATE) || ' MAX_WORK_DATE = ' || TO_CHAR(MAX_WORK_DATE), 'MIN_MAX_WORKER');
END;
/

SELECT * FROM DEBUG_LOG;
/

-- 4.6

CREATE OR REPLACE PROCEDURE LOG_INFO(IN_INFO_MESSAGE IN VARCHAR2, IN_SOURCE IN VARCHAR2)
IS
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
INSERT INTO
DEBUG_LOG(ID, LOG_TIME, MESSAGE, IN_SOURCE)
VALUES (DEBUG_LOG_SEQ.NEXTVAL, CURRENT_TIMESTAMP, IN_INFO_MESSAGE, IN_SOURCE);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
RETURN;
END LOG_INFO;
/

CREATE OR REPLACE PROCEDURE ERROR1
IS
RES NUMBER := 0;
BEGIN
SELECT DEPTNO
INTO RES
FROM DEPT
WHERE DEPTNO > 1000;
EXCEPTION
WHEN NO_DATA_FOUND THEN
LOG_INFO(substr(sqlerrm, 1, 100), 'ERROR1');
END ERROR1;
/

CREATE OR REPLACE PROCEDURE ERROR2
IS
BEGIN
INSERT INTO DEPT(DEPTNO, DNAME, LOC) VALUES(null, null, null);
EXCEPTION
WHEN OTHERS THEN
LOG_INFO(substr(sqlerrm, 1, 100), 'ERROR2');
END ERROR2;
/

CREATE OR REPLACE PROCEDURE ERROR3
IS
RES NUMBER := 0;
BEGIN
SELECT DEPTNO
INTO RES
FROM DEPT;
EXCEPTION
WHEN TOO_MANY_ROWS THEN
LOG_INFO(substr(sqlerrm, 1, 100), 'ERROR3');
END ERROR3;
/

BEGIN
ERROR1;
ERROR2;
ERROR3;
END;
/

SELECT * FROM DEBUG_LOG;
/