CREATE TABLE "HR"."MEMBER" 
   (	
   	"ID" VARCHAR2(10), 
	"PW" VARCHAR2(10), 
	"NAME" VARCHAR2(10), 
	"TEL" VARCHAR2(10)
   ) 
   
CREATE TABLE "HR"."BBS"
(	
	"no" VARCHAR2(100),
	"TITLE" VARCHAR2(100),
	"CONTENT" VARCHAR2(100),
	"WRITER" VARCHAR2(100)
)
​
CREATE TABLE product (
	id varchar2(200), 
	name varchar2(200), 
	content varchar2(200), 
	price varchar2(200), 
	company varchar2(200), 
	img varchar2(200)
)
​
--  한줄복사: 컨트롤 + 알트 + 화살표 아래 
​
--  한줄삭제: 컨트롤 + D 
​
-- 저장할 대상: 엔티티(회원정보, 게시판, 상품), 엔티티간의 관계: 회원이 상품을 주문하다(주문정보)
--           엔티티 + 관계 ==> 테이블로 만들자.!!!!
​
CREATE TABLE orderlist (
	"no" VARCHAR2(100),
	member_id varchar2(100),
	product_id varchar2(100),
	total_count varchar2(100)
	
	
	
CREATE TABLE "HR"."BBS2" 
(	"no" VARCHAR2(100), 
	"TITLE" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	 CONSTRAINT "BBS_PK22" PRIMARY KEY ("no"),
	 CONSTRAINT "FK_MEMBER22" FOREIGN KEY ("WRITER")
	  REFERENCES "HR"."MEMBER" ("ID")
) 
​
CREATE TABLE "HR"."BBS3" 
(	"no" VARCHAR2(100), 
	"TITLE" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"WRITER" VARCHAR2(100)
) 
​
--pk제약조건 추가 
ALTER TABLE HR.BBS3
ADD CONSTRAINT BBS3_PK 
PRIMARY KEY ("no")
​
--kf제약조건 추가
ALTER TABLE HR.BBS3 
ADD CONSTRAINT FK_MEMBER33 
FOREIGN KEY (WRITER) REFERENCES HR."MEMBER"(ID);
​
​
​
CREATE TABLE depart2 (
	id varchar2(100),
	name varchar2(100),
	instructor varchar2(100),
	constraints pk_dp2 PRIMARY KEY (id)
)
​
CREATE TABLE student2 (
	id varchar2(100),
	name varchar2(100),
	tel varchar2(100),
	depart_id varchar2(100)
)
​
ALTER TABLE STUDENT2 
ADD CONSTRAINTS pk_st2 
PRIMARY KEY (id)
​
ALTER TABLE STUDENT2 
ADD CONSTRAINTS fk_st2
FOREIGN KEY (depart_id)
REFERENCES depart2 (id)
​
--  테이블 복사 
​
CREATE TABLE member22 
AS SELECT * FROM MEMBER
​
INSERT INTO MEMBER22 
VALUES ('banana3','banana3','banana3','banana3', sysdate)
​
SELECT * FROM MEMBER22 
​
INSERT INTO MEMBER22 
VALUES ('banana4','banana4','banana4','banana4', sysdate, 'aaa')
​
INSERT INTO bbs
VALUES (bbs_id_seq.nextval, 'happy', 'happy day', 'ice')
​
INSERT INTO bbs
VALUES (bbs_id_seq.nextval, 'happy2', 'happy day2', 'ice')
​
SELECT * FROM bbs
​
CREATE SEQUENCE pd_id_seq 
INCREMENT BY 1
START WITH 1
​
CREATE TABLE product3 (
	id number(38, 0),
	name varchar2(100)
)
​
INSERT INTO product3 
VALUES (pd_id_seq.nextval, 'shoes')
​
SELECT * FROM product3
​
​
1. orderlist3을 만드세요 --id(number), title, price(number)
2. sequence를 만드세요. -- 이름: or_seq, start값: 1, increment값: 1
3. row값 3개 이상 넣어보고 확인해보세요. 
​
CREATE TABLE ORDERLIST3 (
	id number(38, 0),
	title varchar2(100),
	price number(38, 0)
)
​
CREATE SEQUENCE or_seq 
INCREMENT BY 1
START WITH 1
​
INSERT INTO orderlist3 
VALUES (or_seq.nextval, 'shoes', 1000)
​
SELECT * FROM ORDERLIST3
​
SELECT * FROM ORDERLIST3
ORDER BY id -- 오름차순 
​
SELECT * FROM ORDERLIST3
ORDER BY id DESC -- 내림차순
​
SELECT * FROM ORDERLIST3
WHERE id >= 3
ORDER BY id DESC 
​
SELECT * FROM emp -- selection
​
SELECT deptno FROM emp -- projection
​
SELECT DISTINCT deptno FROM emp -- DISTINCT
​
SELECT ename, sal * 12 AS yearsal FROM emp 
​
SELECT * FROM emp
ORDER BY sal DESC
​
SELECT * FROM emp
WHERE DEPTNO = 30
ORDER BY EMPNO DESC
​
SELECT * FROM emp
WHERE NOT DEPTNO = 30
ORDER BY EMPNO DESC
​
SELECT * FROM emp
WHERE DEPTNO = 30 AND JOB = 'salesman'
​
SELECT * FROM emp
WHERE DEPTNO = 30 or JOB = 'SALESMAN'
​
SELECT * FROM emp
WHERE sal >= 3000
​
SELECT * FROM emp
WHERE sal != 3000 
​
SELECT * FROM emp
WHERE job IN ('SALESMAN', 'MANAGER')
ORDER BY job
​
SELECT * FROM emp
WHERE job not IN ('SALESMAN', 'MANAGER')
ORDER BY job
​
SELECT * FROM emp
WHERE sal BETWEEN 2000 AND 3000 
ORDER BY empno
​
SELECT * FROM emp
WHERE sal NOT BETWEEN 2000 AND 3000 
ORDER BY empno
​
SELECT * FROM emp
WHERE ENAME LIKE '_L%'
​
SELECT * FROM emp
WHERE ENAME NOT LIKE '_L%'
​
SELECT * FROM emp
WHERE COMM IS NULL
​
SELECT * FROM emp
WHERE COMM IS NOT NULL
​
CREATE TABLE dept_temp2 
AS
SELECT * FROM DEPT
​
SELECT * FROM dept_temp2
​
UPDATE DEPT_TEMP2 
SET LOC = 'SEOUL'
​
UPDATE DEPT_TEMP2 
SET DNAME = 'DATABASE', loc = 'BUSAN'
WHERE DEPTNO = 40
​
DELETE FROM DEPT_TEMP2 
WHERE DNAME = 'SALES'

SELECT * FROM HR.dept_temp2

-- 문제 1 price는 number(oracle), int(mysql)

-- 문제 2 price로 내림차순 정렬하여 전체컬럼 검색
SELECT * FROM hr.PRODUCT3
ORDER BY PRICE DESC

-- 문제 3 company로 오름차순 정렬하여 제품의 이름, 내용, 가격 검색
SELECT * FROM hr.PRODUCT3
ORDER BY PRICE DESC

-- 문제 4 company의 목록을 검색(중복제거)
SELECT DISTINCT COMPANY  FROM hr.PRODUCT3


-- 문제 5 각 신발을 5개씩 주문했을 때의 가격을 price5라고 항목명을 지정하여 출력
SELECT PRICE * 5 AS "price5" FROM hr.PRODUCT3

-- 문제 6 price가 5000인 제품명과 회사명
SELECT NAME, PRICE, COMPANY FROM hr.PRODUCT3
WHERE PRICE = 5000

-- 문제 7 price가 3000와 6000사이인 제품명과 가격, 회사명 검색
SELECT COMPANY, NAME FROM hr.PRODUCT3
WHERE PRICE BETWEEN 3000 AND 6000

-- 문제 8 회사명이 c100이 아닌 회사명과 제품명
SELECT COMPANY, NAME FROM hr.PRODUCT3
WHERE COMPANY NOT LIKE 'c100'

-- 문제 9 회사명이 c100, c200인 제품명과 가격
SELECT NAME, PRICE FROM hr.PRODUCT3
WHERE COMPANY = 'c100' OR COMPANY = 'c200'

-- 문제 10 제품명에 4로 끝나는 제품의 전체 정보 검색
SELECT * FROM hr.PRODUCT3
WHERE NAME LIKE '%4'

-- 문제 11 제품내용에 food를 포함하는 제품의 전체 정보 검색
SELECT * FROM hr.PRODUCT3
WHERE CONTENT LIKE '%food%'

-- 문제 12 price가 5000원인 제품의 content를 품절로 수정
UPDATE HR.PRODUCT3
SET  CONTENT = '품절'
WHERE PRICE = 5000

SELECT * FROM hr.PRODUCT3

-- 문제 13 id가 100, 102번 제품의 img를 o.png로, price를 10000으로 수정
UPDATE HR.PRODUCT3
SET  img = 'o.png' AND PRICE = 10000
WHERE ID = 100 OR ID = 102

SELECT * FROM hr.PRODUCT3

--문제 14 회사명이 c100인 경우 모든 정보 삭제
DELETE FROM HR.PRODUCT3
WHERE COMPANY = 'c100'

SELECT * FROM hr.PRODUCT3

-- 문제 15 테이블의 모든 정보 삭제
DELETE FROM HR.PRODUCT3

SELECT * FROM hr.PRODUCT3