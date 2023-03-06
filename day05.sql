SELECT * FROM hr.EMP

SELECT concat(empno, ':') AS concat_result FROM hr.emp

SELECT empno || ':' || ename AS concat_result FROM hr.emp

SELECT length(trim(ename)) from hr.emp

SELECT LENGTH(ename) FROM hr.emp

SELECT TRIM(BOTH 'A' FROM ename) FROM EMP -- 양쪽 끝에 A를 제거 

SELECT TRIM(LEADING 'A' FROM ename) FROM EMP -- 앞쪽에 A를 제거 

SELECT TRIM(TRAILING 'A' FROM ename) FROM EMP -- 뒤쪽에 A를 제거 

SELECT REPLACE(ename, ' ', '') FROM EMP

UPDATE EMP
SET COMM = 0
WHERE comm IS NULL

SELECT * FROM EMP e

SELECT sal + comm AS total
FROM EMP

-- 문제 1 ENAME의 글자수 검색
SELECT LENGTH(ename) FROM EMP

-- 문제 2 JOB이 MANAGER인 사람의 ENAME 글자수 검색
SELECT LENGTH(ename) FROM EMP
WHERE JOB = 'MANAGER'

-- 문제 3 COMM이 null인 사람의 ENAME, JOB 검색
SELECT ename, job FROM EMP 
WHERE comm IS NULL 

-- 문제 4 COMM이 null이 아닌 사람의 HIREDATE 검색
SELECT HIREDATE FROM EMP 
WHERE comm IS NOT NULL 

-- 문제 5 ENAME의 2번째글자부터 끝까지 검색
SELECT SUBSTR(ename, 2) FROM EMP 

-- 문제 6 JOB의 1번째 글자부터 3번째 글자까지 검색
SELECT SUBSTR(ename, 1, 3) FROM EMP 

-- 문제 7 ENAME의 글자 중 K를 P으로 변경하여 검색
SELECT REPLACE(ename, 'K', 'P')

-- 문제 8 ENAME과 ENPNO을 이용하여 ‘7369번은 SMITH입니다'로 출력
SELECT empno || '번은 ' | ename || '입니다' FROM EMP

-- 문제 19 HIREDATE 이용하여 입사한 월과 요일을 출력
SELECT hiredate to_char(SYSDATE, 'mm') AS mm, TO_CHAR(SYSDATE, 'day') AS DAY FROM EMP 

-- 문제 10 JOB이 MANAGER이면 level1, SALESMAN이면 level2, 기타이면 level3라고 LEVEL_RESULT컬럼에 출력
SELECT job
CASE job
	WHEN 'manager' THEN 'level1'
	WHEN 'saleman' THEN 'level2'
	ELSE 'level3'
END AS level_result
FROM EMP

SELECT COUNT(sal) 
FROM EMP 
WHERE JOB = 'saleman'

SELECT count(sal), count(sal), avg(sal), min(sal), max(sal)
FROM EMP 
WHERE JOB = 'saleman'

SELECT job count(sal), count(sal), avg(sal), min(sal), max(sal)
FROM EMP 
GROUP BY JOB 
ORDER BY JOB DESC
HAVING COUNT(SAL) >= 4

-- 문제 1 전체 직원수 출력
SELECT COUNT(*) FROM EMP 

-- 문제 2 DEPTNO가 20이거나 MGR이 7700이하인 직원수 출력
SELECT COUNT(*) FROM EMP
GROUP BY DEPTNO, MGR
HAVING DEPTNO = 20 OR mgr <= 7700

-- 문제 3 DEPTNO가 10 또는 20인 직원의 SAL최저 출력
SELECT MIN(SAL) FROM EMP
GROUP BY DEPTNO
HAVING DEPTNO = 10 OR DEPTNO = 20

-- 문제 4 직원의 SAL 최저, 최고, 합계 출력
SELECT MIN(sal), MAX(sal), SUM(sal) FROM EMP 

-- 문제 5 DEPTNO별  SAL 평균 출력
SELECT AVG(SAL) FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO

-- 문제 6 DEPTNO별  SAL 합계를 DEPTNO 오름차순으로 출력
SELECT SUM(SAL) FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO

-- 문제 7 DEPTNO별  SAL 평균이 2000이상인 SAL평균을 DEPTNO역순으로 출력
SELECT AVG(SAL) FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) >= 2000 
ORDER BY DEPTNO DESC

-- 문제 8 JOB이 MANAGER인 직원의 전체 수, 월급의 평균 검색
SELECT COUNT(*), AVG(sal) form emp
GROUP BY job
HAVING job = 'MANAGER'

-- 문제 9 ENAME에 S를 포함하는 직원의 전체 수를 검색
SELECT COUNT(ENAME) FROM EMP 
WHERE enmae LIKE '%S%'

-- 문제 10 SAL이 3000이상이고,  COMM이 null이 아닌 직원의 전체 수 검색, SAL의 역순으로 출력
SELECT COUNT((*) FROM EMP
WHERE COMM IS NOT NULL
GROUP BY SAL
HAVING SAL > 3000
ORDER BY SAL DESC 

----------------------------------
-- join : 왜 하는가? 검색을 하고 싶은데 항목들이 여러개의 테이블에 흩어져 있는 경우
--		  테이블을 모아서(합해서) 검색

SELECT b."no", title, NAME FROM MEMBER2 m, BBS2 b
WHERE m.ID = b.WRITER 


---- Inner join : 테이블간 공통된 값만 추출
---- emp 테이블과 dept 테이블을 조인하세요
---- 하나의 컬럼 이상이 동일한 컬럼이 있어야 함
---- empno, ename, job, depto, loc 컬럼 검색
---- 조인 조건 : deptno


SELECT e.EMPNO, e.ENAME, e.JOB, d.DEPTNO, d.LOC FROM EMP e, DEPT d 
WHERE e.DEPTNO = d.DEPTNO 

SELECT * FROM MEMBER2 m 
LEFT OUTER JOIN BBS2 b ON (m.ID = b.WRITER)

SELECT * FROM MEMBER2 m 
RIGHT OUTER JOIN BBS2 b ON (m.ID = b.WRITER)

SELECT * FROM EMP e 
RIGHT OUTER JOIN DEPT d ON (e.DEPTNO = d.DEPTNO)

SELECT * FROM EMP e
RIGHT OUTER JOIN DEPT d ON (e.DEPTNO = d.DEPTNO)


-- 문제 1 member table과 bbs table의 inner join하시오.(조인 조건 bbs의 writer, member의 id)
SELECT * FROM MEMBER2 m, BBS2 b 
WHERE m.ID = b.WRITER 

-- 문제 2 member table과 bbs table의 left outer join하시오.(조인 조건 bbs의 writer, member의 id)
SELECT m.ID, m.NAME, b.TITLE, b.CONTENT FROM MEMBER2 m 
LEFT OUTER JOIN BBS2 b ON (m.ID = b.WRITER)

-- 문제 3 member table과 bbs table의 right outer join하시오.(조인 조건 bbs의 writer, member의 id)
SELECT m.ID, m.NAME, b.TITLE, b.CONTENT FROM MEMBER2 m 
RIGHT OUTER JOIN BBS2 b ON (m.ID = b.WRITER)

CREATE TABLE company (
	id varchar2(200) PRIMARY key,
	name varchar2(200),
	addr varchar2(200),
	tel varchar2(200)
)

INSERT INTO company VALUES ('c100', 'good', 'seoul', '011')

INSERT INTO company VALUES ('c200', 'joa', 'busan', '012')

INSERT INTO company VALUES ('c300', 'maria', 'ulsan', '013')

INSERT INTO company VALUES ('c400', 'my', 'kwangju', '014')

SELECT * FROM company

-- inner join
SELECT * FROM PRODUCT p, COMPANY c  
WHERE p.COMPANY = c.ID

-- left outer join
SELECT * FROM PRODUCT p
LEFT OUTER JOIN COMPANY c ON (p.COMPANY = c.ID)

--right outer join
SELECT * FROM PRODUCT p
RIGHT OUTER JOIN COMPANY c ON (p.COMPANY = c.ID)

