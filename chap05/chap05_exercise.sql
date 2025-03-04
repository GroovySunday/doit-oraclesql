-- 실습 5-1
SELECT *
  FROM EMP;

-- 실습 5-2
SELECT *
  FROM EMP
 WHERE DEPTNO = 30;

-- 실습 5-3
SELECT *
  FROM EMP
 WHERE DEPTNO = 30
   AND JOB = 'SALESMAN';

-- 실습 5-4
SELECT *
  FROM EMP
 WHERE DEPTNO = 30
    OR JOB = 'CLERK';

-- 실습 5-5
SELECT *
  FROM EMP
 WHERE SAL * 12 = 36000;

-- 실습 5-6
SELECT *
  FROM EMP
 WHERE SAL >= 3000;

-- 실습 5-7
SELECT *
  FROM EMP
 WHERE ENAME >= 'F';

-- 실습 5-8
SELECT *
  FROM EMP
 WHERE ENAME <= 'FORZ';

-- 실습 5-9
SELECT *
  FROM EMP
 WHERE SAL != 3000;

-- 실습 5-10
SELECT *
  FROM EMP
 WHERE SAL <> 3000;

-- 실습 5-11
SELECT *
  FROM EMP
 WHERE SAL ^= 3000;

-- 실습 5-12
SELECT *
  FROM EMP
 WHERE NOT SAL = 3000;

-- 실습 5-13
SELECT *
  FROM EMP
 WHERE JOB = 'MANAGER'
    OR JOB = 'SALESMAN'
    OR JOB = 'CLERK';

-- 실습 5-14
SELECT *
  FROM EMP
 WHERE JOB IN ('MANAGER', 'SALESMAN', 'CLERK');

-- 실습 5-15
SELECT *
  FROM EMP
 WHERE JOB != 'MANAGER'
   AND JOB <> 'SALESMAN'
   AND JOB ^= 'CLERK';

-- 실습 5-16
SELECT *
  FROM EMP
 WHERE JOB NOT IN ('MANAGER', 'SALESMAN', 'CLERK');

-- 실습 5-17
SELECT *
  FROM EMP
 WHERE SAL >= 2000
   AND SAL <= 3000;

-- 실습 5-18
SELECT *
  FROM EMP
 WHERE SAL BETWEEN 2000 AND 3000;

-- 실습 5-19
SELECT *
  FROM EMP
 WHERE SAL NOT BETWEEN 2000 AND 3000;

-- 실습 5-20
SELECT *
  FROM EMP
 WHERE ENAME LIKE 'S%';

-- 실습 5-21
SELECT *
  FROM EMP
 WHERE ENAME LIKE '_L%';

-- 실습 5-22
SELECT *
  FROM EMP
 WHERE ENAME LIKE '%AM%';

-- 실습 5-23
SELECT *
  FROM EMP
 WHERE ENAME NOT LIKE '%AM%';

-- 실습 5-24
SELECT ENAME, SAL, SAL*12+COMM AS ANNSAL, COMM
  FROM EMP;

-- 실습 5-25
SELECT *
  FROM EMP
 WHERE COMM = NULL;

-- 실습 5-26
SELECT *
  FROM EMP
 WHERE COMM IS NULL;

-- 실습 5-27
SELECT *
  FROM EMP
 WHERE MGR IS NOT NULL;

-- 실습 5-28
SELECT *
  FROM EMP
 WHERE SAL > NULL
   AND COMM IS NULL;

-- 실습 5-29
SELECT *
  FROM EMP
 WHERE SAL > NULL
    OR COMM IS NULL;

-- 실습 5-30
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10
UNION
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 20;

-- 실습 5-31
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10
UNION
SELECT EMPNO, ENAME, SAL
  FROM EMP
 WHERE DEPTNO = 20;

-- 실습 5-32
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10
UNION
SELECT ENAME, EMPNO, DEPTNO, SAL
  FROM EMP
 WHERE DEPTNO = 20;

-- 실습 5-33
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10
UNION
SELECT SAL, JOB, DEPTNO, SAL
  FROM EMP
 WHERE DEPTNO = 20;

-- 실습 5-34
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10
UNION
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10;

-- 실습 5-35
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10
UNION ALL
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10;

-- 실습 5-36
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
MINUS
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10;

-- 실습 5-37
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
INTERSECT
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10;
