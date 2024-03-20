CREATE DATABASE WORKER;
USE WORKER;


CREATE TABLE WORKER (WORKER_ID INT PRIMARY KEY,
FIRST_NAME VARCHAR (20),
LAST_NAME VARCHAR (20),
SALARY INT ,
JOINING_DATE TIMESTAMP,
DEPARTMENT VARCHAR (20)
);

SELECT * FROM WORKER;
SELECT WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT FROM WORKER; 

INSERT INTO WORKER (WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
VALUE (1,'MONIKA','ARORA',100000,'2014-02-20 9:00','HR'),
(2,'NIHARIKA','VERMA',80000,'2014-06-11 9:00','ADMIN'),
(3,'VISHAL','SINGHAL',300000,'2014-02-20 9:00','HR'),
(4,'AMITABH','SINGH',500000,'2014-02-20 9:00','ADMIN'),
(5,'VIVEK','BHATI',500000,'2014-06-11 9:00','ADMIN'),
(6,'VIPUL','DIWAN',200000,'2014-06-11 9:00','ACCOUNT'),
(7,'SATISH','KUMAR',75000,'2014-01-20 9:00','ACCOUNT'),
(8,'GEETIKA','CHAUHAN',90000,'2014-04-11 9:00','ADMIN');

-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending 
SELECT * FROM WORKER ORDER BY FIRST_NAME ASC,DEPARTMENT DESC;

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table. 
SELECT * FROM WORKER WHERE FIRST_NAME IN ('VIPUL') OR FIRST_NAME in('SATISH');

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 
SELECT * FROM WORKER WHERE LENGTH(FIRST_NAME)=6 AND FIRST_NAME LIKE "_____H";
SELECT * FROM WORKER WHERE LENGTH(FIRST_NAME)=6 AND FIRST_NAME LIKE "%%H";

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1. 
SELECT * FROM WORKER WHERE SALARY BETWEEN 100000 AND 200000 ;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
 SELECT FIRST_NAME,LAST_NAME,COUNT(*) FROM WORKER GROUP BY FIRST_NAME,LAST_NAME HAVING COUNT(*) >1;
 
 -- 6. Write an SQL query to show the top 6 records of a table. 
 SELECT * FROM WORKER LIMIT 6;
 
 -- 7. Write an SQL query to fetch the departments that have less than five people in them. 
 SELECT DEPARTMENT FROM WORKER WHERE DEPARTMENT IN (SELECT DEPARTMENT FROM WORKER GROUP BY DEPARTMENT HAVING COUNT(*) <5);
 
 -- 8. Write an SQL query to show all departments along with the number of people in there. 
SELECT DEPARTMENT,COUNT(*) FROM WORKER GROUP BY DEPARTMENT HAVING COUNT(*);

-- 9. Write an SQL query to print the name of employees having the highest salary in each department. 
SELECT MAX(SALARY) FROM WORKER ORDER BY  MAX(SALARY);
