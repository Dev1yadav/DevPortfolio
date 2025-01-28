select * from table_4;
select * from table_4 where city like 'b%';
select * from table_4 where name like '%yam%';
select * from table_4 where name like '%m';
select * from table_4 where name like 'h%m';
select * from table_4 where name like '_h%';
select * from table_4 where name like '___M%H__';
select * from table_4 where city like '__h_i%mn__';
select * from table_4 where age like '%1';
select * from table_4  where DOB like '%3';
select * from table_4 ;
SELECT * FROM TABLE_4 WHERE CITY IN ('BHOPAL','GOA','DELHI');

SELECT * FROM TABLE_4;

-- ORDER BY
SELECT * FROM TABLE_4 ORDER BY AGE DESC;
SELECT * FROM TABLE_4 ORDER BY AGE ASC;
SELECT * FROM TABLE_4 ORDER BY CITY DESC;
SELECT * FROM TABLE_4 ORDER BY CITY ASC;
SELECT * FROM TABLE_4 ORDER BY DOB DESC;
SELECT * FROM TABLE_4 ORDER BY DOB ASC;
SELECT * FROM TABLE_4 ORDER BY AGE ASC, CITY DESC;
SELECT * FROM TABLE_4 ORDER BY CITY DESC,AGE ASC,DOB DESC;
SELECT * FROM TABLE_4   LIMIT 2;


-- AGGREGATE FUNCTIONS:
-- MIN, MAX, SUM, AVG,COUNT
select * from table_4;
SELECT MIN(NAME) FROM TABLE_4;
select min(age) as minimum_age from table_4;
select max(age) as maxm_age from table_4;
select count(age) as count_student from table_4;
select avg(age) as avg_age from table_4;
select sum(age) as su_of_age from table_4;
SELECT ROUND(AVG(AGE),2) FROM TABLE_4;
select avg(age) from table_4 where age>22;
select sum(age) as sum_age from table_4 where age<23;
select count(age) from table_4 where age>23;
select round(avg(age),0) from table_4;
-- STRING MANIPULATION FUNCTIONS
-- LENGTH(): 
select NAME,length(name) as length_name from table_4;
select name as naaaaaam,length(city) as length_of_city from table_4;
select *,length(city) from table_4;
select city as student_city from table_4;
select length(city),length(name) from table_4;
select * from table_4;
-- Lower function
select lower(name) from table_4;
select upper(name) from table_4;
UPDATE TABLE_4 SET NAME = LOWER(NAME);
-- substring(); Used to extracts characters from a text field
-- syntax: SUBSTRING(COLUMN_NAME,START_POSITION,LENGTH_CHAR)
SELECT * FROM TABLE_4;
SELECT SUBSTRING(NAME,1,1) FROM TABLE_4;
SELECT SUBSTRING(NAME,2,3) FROM TABLE_4;


SELECT SUBSTRING(NAME,LENGTH(NAME)-1,2) FROM TABLE_4;
SELECT SUBSTRING(NAME,-2,2) FROM TABLE_4;

ALTER TABLE TABLE_4
ADD COLUMN NEW_NAME VARCHAR(20);
SELECT * FROM TABLE_4;
UPDATE TABLE_4
SET NEW_NAME = SUBSTRING(NAME,1,1);

SET SQL_SAFE_UPDATES = 0;
select * from table_4;
select substring(city,2) from table_4;
select mid(city,2,2) from table_4;
select mid(city,2) from table_4;

alter table table_4
add column new_name_3 varchar(20);
select * from table_4;

update table_4
set new_name_3 = substring(city,-2,2);

-- LOCATE(): USED TO FIND THE SUBSTRING WITHIN A FIELD.
-- LOCATE(SUBSTRING,COL_NAME,START_POSITION)
SELECT LOCATE('AM',NAME,1) FROM TABLE_4;
SELECT * FROM TABLE_4;
SELECT LOCATE('pal',CITY,1) FROM TABLE_4;

/* REPLACE(): REPLACE ALL THE OCCURENCES OF THE SEARCH
STRING WITH THE REPLACE STRING
SYNTAX: REPLACE(COL_NAME,SEARCH_STR,REPLACE_STR)
Argum.  of Replace is case sensitive
*/
SELECT REPLACE(NAME,'m','A') from table_4;
alter table table_4
add column new_city varchar(20);
update table_4
set new_city = replace(city,'O','M');
select * from table_4;
select name,replace(city,'PAL','ABH') from table_4;

-- TRIM(): USED TO TRIM THE SUBSTRING FROM A FIELD
SELECT TRIM('m' FROM NAME) FROM TABLE_4;

ALTER TABLE TABLE_4
ADD COLUMN TRIMM VARCHAR(20);
SELECT * FROM TABLE_4; 
SET SQL_SAFE_UPDATES = 0;
UPDATE TABLE_4
SET TRIMM = '_NAM_E';

SELECT TRIM('_' FROM TRIMM) FROM TABLE_4;
UPDATE TABLE_4
SET CITY = SUBSTRING(CITY,-2,2);

-- CONCAT(): USED TO MERGE/CONCATENATE TWO FIELDS INTO ONE FIELD.
-- SYNTAX: CONCAT(COL_1,SEPARATOR,COL_2)
SELECT CONCAT(NAME,',',CITY) AS MERGE FROM TABLE_4;
SELECT * FROM TABLE_4;
SELECT CONCAT(NAME,'_',AGE) AS NAME_AGE FROM TABLE_4;
UPDATE TABLE_4
SET CITY = CONCAT(NAME,'_',CITY);
SELECT * FROM TABLE_4;
SELECT REVERSE(NAME) FROM TABLE_4;
UPDATE TABLE_4
SET NAME = REVERSE(NAME);

-- DATE FUNCTIONS:

-- NOW() : USED TO GET THE CURRENT DATE AND TIME
SELECT NOW();

-- CURDATE(): USED TO GET THE CURRENT DATE
SELECT CURDATE();

-- CURTIME(): USED TO GET THE CURRENT TIME
SELECT CURTIME();

-- DATE(): EXTRACTS THE DATE PART OF THE DATE/DATETIME COL.
SELECT DATE(NOW());
USE DB_4;
SELECT * FROM TABLE_4;

-- YEAR(): USED TO EXTRACT THE YEAR FROM DATE/DATETIME COL
SELECT YEAR(DOB) FROM TABLE_4;

-- MONTH(): USED TO EXTRACT THE MONTH FROM DATE/DATETIME COL
SELECT MONTH(DOB) FROM TABLE_4;

-- DAY(): USED TO EXTRACT THE DAY FROM DATE/DATETIME COL
SELECT DAY(DOB) FROM TABLE_4;


/* EXTRACT(): USED TO EXTRACT A SPECIFIC PART FROM A 
DATE COL.
SYNTAX: EXTRACT(YEAR FROM COLUMN_NAME)
*/
ALTER TABLE TABLE_4
ADD COLUMN DATE_TIME DATETIME;
UPDATE TABLE_4
SET DATE_TIME = NOW();
SELECT * FROM TABLE_4;
SELECT EXTRACT(YEAR FROM DATE_TIME)
FROM TABLE_4;
SELECT EXTRACT(MONTH FROM DATE_TIME)
FROM TABLE_4;
SELECT EXTRACT(DAY FROM DATE_TIME)
FROM TABLE_4;
SELECT EXTRACT(HOUR FROM DATE_TIME)
FROM TABLE_4;
SELECT EXTRACT(MINUTE FROM DATE_TIME)
FROM TABLE_4;
SELECT EXTRACT(SECOND FROM DATE_TIME)
FROM TABLE_4;

-- DATE_ADD(): USED TO ADD A SPECIFIED INTERVAL TO A DATE/DATETIME COL
-- SYNTAX: DATE_ADD(COL_NAME, INTERVAL VALUE UNIT)
-- EX. DATE_ADD(DOB,INTERVAL 1 MONTH)
SELECT DATE_ADD(DOB, INTERVAL 18 MONTH) FROM TABLE_4;
SELECT DATE_ADD(DOB, INTERVAL -1 YEAR) FROM TABLE_4;
SELECT DATE_ADD(DATE_TIME, INTERVAL 24 HOUR) FROM TABLE_4;
SELECT * FROM TABLE_4;

-- DATE_SUB(): USED TO SUBTRACT INTERVAL FROM A DATE/DATETIME COL
SELECT DATE_SUB(DATE_TIME, INTERVAL 24 HOUR) FROM TABLE_4;

-- DATEDIFF(): USED TO RETURN THE DIFFERENCE BTW TWO DATE IN DAYS.
-- SYNTAX: DATEDIFF(END_DATE,STRT_DATE)
SELECT DATEDIFF(DOB,'1999-02-02') FROM TABLE_4;

-- DATE_FORMAT(): IS USED TO FORMAT THE DATE/DATETIME COLUMN.
-- SYNTAX: DATE_FORMAT(COL_NAME,'%d-%m-%Y')

select date_format(dob,'%d-%m-%Y') from table_4;
select date_format(dob,'%D-%m-%Y') from table_4;
select date_format(dob,'%d-%M-%Y') from table_4;

select * from table_4;
update table_4
set name = date_format(dob_1,'%d-%m-%Y');
alter table table_4
add column date_format varchar(30);
update table_4
set date_format = date_format(dob_1,'%d-%m-%Y %h-%i-%s %p');

set sql_safe_updates = 0;
alter table table_4 modify age float;
update table_4
set age = age/3.5;
select * from table_4;
update table_4 
set age = -10 
where id = 2;
select * from table_4;

-- number functions
-- ABS(): USED TO RETURN THE ABSOLUTE VALUES(i.e. non-negative values).
SELECT ABS(AGE) FROM TABLE_4;

-- round(): used to round off the digits after the decimal
select round(age,2) from table_4;
select age from table_4;

-- ceil(): used to return the next int or round up the values
select ceil(age) from table_4;

-- floor(): used to return the previous int or round down the values
select floor(age) from table_4;
select power(age,2) from table_4;

select * from table_4 where age_10 is not null;

select * from table_4 where age_10 is null;
select isnull(age_10) from table_4;

select isnull(age) from table_4;
select coalesce(age_10,100) from table_4;
/* JOINS: USED TO COMBINE ROWS FROM TWO OR MORE THANK TWO TABLES
BASED ON A RELATED FIELD BETWEEN THEM
1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL JOIN/ FULL OUTER JOIN
(FULL JOIN IS NOT SUPPORTED IN MYSQL WORKBENCH INSTEAD
WE WILL USE LEFT JOIN AND RIGHT JOIN WITH UNION)

*/

CREATE DATABASE JOINPART;
USE JOINPART;
CREATE TABLE EMPLOYEE
(
	EMP_ID INT,
    FIRST_NAME VARCHAR(20),
    LAST_NAME VARCHAR(20),
    DEPARTMENT_ID INT
);
INSERT INTO EMPLOYEE VALUES
(1,"AKASH","SHARMA",1),
(2,"PRAMOD","MISRA",2),
(3,"PRAKASH","PANDEY",1),
(4,"SHAKESH","DUBEY",3);

CREATE TABLE DEPARTMENT
(
	DEPARTMENT_ID INT,
    DEPARTMENT_NAME VARCHAR(20)
);

INSERT INTO DEPARTMENT VALUES
(1,"SALES"),
(2,"MARKETING"),
(3,"IT");

CREATE TABLE PROJECTS
(
	PROJECT_ID INT,
    PROJECT_NAME VARCHAR(20),
    EMP_ID INT
);

INSERT INTO PROJECTS VALUES
(1,"A",1),
(2,"B",2),
(3,"C",1),
(4,"D",4);

SELECT * FROM DEPARTMENT;
SELECT * FROM EMPLOYEE;
SELECT * FROM PROJECTS;

-- LEFT JOIN:
SELECT EMPLOYEE.FIRST_NAME, DEPARTMENT.DEPARTMENT_NAME
FROM EMPLOYEE LEFT JOIN DEPARTMENT
ON EMPLOYEE.DEPARTMENT_ID = DEPARTMENT.DEPARTMENT_ID;

SELECT EMPLOYEE.FIRST_NAME, DEPARTMENT.DEPARTMENT_NAME
FROM EMPLOYEE INNER JOIN DEPARTMENT
ON EMPLOYEE.DEPARTMENT_ID = DEPARTMENT.DEPARTMENT_ID;


SELECT EMPLOYEE.FIRST_NAME, PROJECTS.PROJECT_NAME
FROM EMPLOYEE LEFT JOIN PROJECTS
ON EMPLOYEE.EMP_ID = PROJECTS.EMP_ID;


SELECT * FROM EMPLOYEE
INNER JOIN DEPARTMENT ON 
EMPLOYEE.DEPARTMENT_ID = DEPARTMENT.DEPARTMENT_ID
INNER JOIN PROJECTS ON PROJECTS.EMP_ID = EMPLOYEE.EMP_ID;

-- UNION: USED TO COMBINE THE TWO OR MORE TABLES.alter
-- UNION IS USED TO SELECT ONLY DISTINCT VALUES BY DEFAULT.
/*SYNTAX: SELECT COL_1,COL_2
		FROM TABLE_1
        UNION
		SELECT COL_1,COL_2
		FROM TABLE_12;		
        
IMP: BOTH THE TABLES MUST HAVE SAME NO. OF COLUMNS AND THEIR DATATYPE*/
SELECT EMP_ID,FIRST_NAME FROM EMPLOYEE
UNION
SELECT DEPARTMENT_NAME FROM DEPARTMENT;
use sql_adv;
show tables;
create table customers( cust_id int, first_name varchar(30));
insert into customers
values
(1,'AKASH'),
(2,'PRABHASH'),(3,'PRAKASH'),(4,'SUBHASH'),(5,'DEVASH');
CREATE TABLE ORDERS (ORDER_ID INT,AMOUT INT,CUST_ID INT);
INSERT INTO ORDERS
VALUES
(1,200,10),
(2,500,3),
(3,300,6),
(4,800,5),
(5,180,8);
SELECT * FROM ORDERS;
SELECT * FROM CUSTOMERS;

select customers.first_name, ORDERS.amout
from customers inner join orders
on customers.cust_id = orders.cust_id;

-- INNER  JOIN (JOIN)
SELECT CUSTOMERS.FIRST_NAME, ORDERS.AMOUT
FROM CUSTOMERS JOIN ORDERS
ON CUSTOMERS.CUST_ID = ORDERS.CUST_ID;

-- LEFT JOIN
SELECT CUSTOMERS.FIRST_NAME, ORDERS.AMOUT
FROM CUSTOMERS LEFT JOIN ORDERS
ON CUSTOMERS.CUST_ID = ORDERS.CUST_ID;


-- RIGHT JOIN
SELECT CUSTOMERS.FIRST_NAME, ORDERS.AMOUT
FROM CUSTOMERS RIGHT JOIN ORDERS
ON CUSTOMERS.CUST_ID = ORDERS.CUST_ID;

-- FULL OUTER/ FULL JOIN

select * from orders left join customers
on CUSTOMERS.CUST_ID = ORDERS.CUST_ID

union

select * from orders right join customers on
CUSTOMERS.CUST_ID = ORDERS.CUST_ID;
select * from table_4 limit 1 offset 2;
select * from table_4 ;
select * from table_4 order by age desc limit 1,1 ;
select * from table_4;
select city,count(name) from table_4 group by city order by count(name);
create index index_name
on table_4 (city);

use sql_adv;
select * from orders;
select * from customers;
-- cross joins
select 