CREATE TABLE "HR"."NOTICE" 
   (	"BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	"WRITEDATE" DATE, 
	"RECOMMEND" NUMBER(38,0), 
	"VIEWCOUNT" NUMBER(38,0)
   )
   
   -- 추천게시판(recommend)
   -- re_no 숫자
   -- title, content, writer 문자
   
   CREATE TABLE "HR"."RECOMMEND"
   (	"RE_NO" NUMBER(38, 0),
	   	"TITLE" VARCHAR2(100), 
		"CONTENT" VARCHAR2(100), 
		"WRITER" VARCHAR2(100)
   )
   
   DROP TABLE RECOMMEND -- 테이블 통재로 던져버림
   
    CREATE TABLE "HR"."RECOMMEND"
   (	"RE_NO" NUMBER(38, 0),
	   	"TITLE" VARCHAR2(100), 
		"CONTENT" VARCHAR2(100), 
		"WRITER" VARCHAR2(100)
   )
   
   ALTER TABLE HR.RECOMMEND MODIFY TITLE varchar2(333)
   
   ALTER TABLE HR.RECOMMEND ADD VIEWCOUNT NUMBER(38,0)
   
   ALTER TABLE RECOMMEND DROP COLUMN VIEWCOUNT
   
   CREATE TABLE "HR"."BOARD3" 
   (	"BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	"WRITEDATE" DATE, 
	"RECOMMEND" NUMBER(38,0), 
	"VIEWCOUNT" NUMBER(38,0)
   )

ALTER TABLE BOARD3 MODIFY writer varchar2(200)
   
ALTER TABLE HR.BOARD3 ADD TEST VARCHAR2(100) NULL;
  
ALTER TABLE HR.BOARD3 ADD TEST2 VARCHAR2(100) NULL;
 
ALTER TABLE HR.BOARD3 ADD TEST3 VARCHAR2(100) NULL;

ALTER TABLE HR.BOARD3 DROP COLUMN TEST;

ALTER TABLE HR.BOARD3 DROP COLUMN TEST2;

ALTER TABLE HR.BOARD3 DROP COLUMN TEST3;

DELETE TABLE BOARD3 

-- DCL : DB 관리/제어해주는 문법 (게정생성, 계정권한부여, 백업, 복구)

CREATE USER apple IDENTIFIED BY a1234

GRANT  CONNECT, resource, dba TO apple

CREATE TABLE "HR"."PRODUCT22" 
   (	"ID" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"PRICE" NUMBER(38,0)
   )
   
   CREATE TABLE "HR"."PRODUCT3" 
   ("ID" VARCHAR2(100) PRIMARY key, 
	"NAME" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"PRICE" NUMBER(38,0)
   )
   
   
   
   GRANT CONNECT, resource, dba TO scott;
   
  INSERT INTO MEMBER VALUES ('100', '100', 'park', '011')
  
  INSERT INTO MEMBER VALUES ('200', '200', 'park', '011')
  
  INSERT INTO MEMBER VALUES ('300', '300', 'park', '011')
  
  SELECT * FROM MEMBER

  SELECT id FROM MEMBER WHERE id = '100' -- id가 100인 id 컬럼

  SELECT id, name FROM MEMBER WHERE id = '100' -- id가 100인 id 컬럼
  
  SELECT id AS 아이디, name FROM MEMBER WHERE id = '100' -- id가 100인 id 컬럼

  SELECT tel FROM MEMBER WHERE name = 'park' 
  
  UPDATE MEMBER SET name = 'kim' WHERE id = '100'

  UPDATE MEMBER SET name = 'yang' WHERE id = '200'
  
  UPDATE MEMBER SET name = 'lee' WHERE id = '300'
  
  SELECT * FROM MEMBER
  
  UPDATE MEMBER SET pw = '8888', tel = '9999' WHERE id = 'ice'
  
  DELETE FROM MEMBER WHERE id = '100'
  
 DELETE FROM MEMBER WHERE tel = '011'
  
 SELECT * FROM MEMBER WHERE id = '200' AND tel = '011'
 
 SELECT * FROM MEMBER WHERE id = '200' OR tel = '011'
 
 
 CREATE TABLE product (
 	id varchar2(200),
 	name varchar2(200),
 	content varchar2(200),
 	price varchar2(200),
 	company varchar2(200),
 	img varchar2(200)
 )
 
 SELECT * FROM MEMBER ORDER BY id -- 오름차순
 
 SELECT * FROM MEMBER ORDER BY id DESC -- 내림차순
 
 -- 문제 1.
 
 SELECT * FROM PRODUCT3 ORDER BY price DESC
 
 -- 문제 2. 
 
 SELECT * FROM PRODUCT3 ORDER BY COMPANY
  
 -- 문제 3. 
 
 SELECT NAME, CONTENT, PRICE FROM PRODUCT3 WHERE id = '100'
  
 -- 문제 4. 
 
 SELECT NAME, COMPANY FROM PRODUCT3 WHERE price = '5000'
  
 -- 문제 5. 
 
 SELECT NAME, IMG FROM PRODUCT3 WHERE id = '100' AND PRICE = '1000'
  
 -- 문제 6. 
 
 SELECT COMPANY, NAME FROM PRODUCT3 WHERE COMPANY = 'c100'
  
 -- 문제 7. 
 
 SELECT NAME, PRICE  FROM PRODUCT3 WHERE COMPANY = 'c100' AND COMPANY = 'c200'
 
 -- 문제 8. 
 
 UPDATE PRODUCT3 SET CONTENT = '픔절' WHERE PRICE = '5000'
 
 -- 문제 9. 
 
 UPDATE PRODUCT3 SET img = 'o.png', PRICE = '10000' WHERE id = '100' AND id = '102'
 
 -- 문제 10. 
 
 UPDATE PRODUCT3 SET COMPANY = 'apple', name = 'appleshoes' WHERE id = '101'
 
 -- 문제 11. 
 
 DELETE FROM PRODUCT3 WHERE name = 'shoes1' or id = '107'
 
 -- 문제 12. 
 
 DELETE FROM PRODUCT3 WHERE COMPANY = 'c100'
 
 -- 문제 13. 
 
DROP TABLE PRODUCT3

