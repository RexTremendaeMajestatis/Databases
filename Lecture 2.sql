-- Должности сотрудников
SELECT ENAME, JOB FROM EMP
/

-- Сколько сотрудников в каждом департаменте (исправил замечание)
SELECT DEPTNO, COUNT(ENAME)
FROM
    (SELECT DEPT.DEPTNO, EMP.ENAME
    from DEPT
    LEFT OUTER JOIN EMP ON (dept.deptno = emp.deptno))
GROUP BY DEPTNO
/

-- Средняя ЗП по каждой должности
SELECT JOB, AVG(SAL) FROM EMP
GROUP BY JOB
/

-- Мин. и макс. ЗП по каждой должности
SELECT JOB, MIN(SAL), MAX(SAL) FROM EMP
GROUP BY JOB
/

-- Суммарная ЗП по каждому департаменту (исправил замечание)
SELECT DEPTNO, SUM(SAL)
FROM
    (SELECT DEPT.DEPTNO, EMP.SAL
    from DEPT
    LEFT OUTER JOIN EMP ON (DEPT.DEPTNO = EMP.DEPTNO))
GROUP BY DEPTNO
/

-- Всевозможные пары менеджеров (исправил замечание)
SELECT T1.ENAME, T2.ENAME FROM
EMP T1
CROSS JOIN
EMP T2
WHERE T1.JOB = 'MANAGER' AND T2.JOB = 'MANAGER' AND T1.EMPNO <> T2.EMPNO
/

-- Всевозможные пары менеджеров
SELECT T1.ENAME, T2.ENAME FROM
(SELECT *
FROM EMP
WHERE JOB = 'MANAGER') T1
CROSS JOIN
(SELECT *
FROM EMP
WHERE JOB = 'MANAGER') T2
WHERE T1.ENAME <> T2.ENAME
/
