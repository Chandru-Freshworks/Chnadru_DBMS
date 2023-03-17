USE store;

SHOW tables;

SELECT *
FROM customers;
SELECT *
FROM products;


SELECT *
FROM customers
ORDER BY first_name DESC;

/*
multiline comment
*/

-- hii I am chandru
SELECT 1,2;
SELECT 1+2;
SELECT 100 - 50 /2;

/* order of arithmetic:
()
/
*
+
-
*/
SELECT 100 -50 /2 AS 'answer value';
USE store;

SELECT first_name, last_name ,points from customers;

/*
Syntax of SELECT statement:
SELECT <coloumn_1>,<coloumn_2>,...<coloumn_n>
FROM <table_name>;

SELECT * --all coloumns of the table
FROM <table_name>;

*/
SELECT first_name,last_name,points,points +10 AS 'new points' FROM customers;

SELECT 171*214+625 AS answer;

USE exercise_hr;
SELECT FIRST_NAME AS 'First_Name'
FROM employees;
-- SELECT FIRST_NAME AS 'First Name' , LAST_NAME AS 'Last Name' FROM employees; 

-- SELECT FIRST_NAME ,LAST_NAME ,SALARY,SALARY * 15 / 100 AS PF FROM employees;

-- SELECT DISTINCT department_id 
-- FROM employees;
USE store;
SELECT *
FROM customers

WHERE state = 'FL';

SELECT *
FROM customers
WHERE points > 3000;


SELECT *
FROM customers
WHERE birth_date > '1990-01-01';

SELECT *
FROM customers
WHERE state != 'FL';

SELECT *
FROM customers
WHERE points > 3000 AND birth_date > '1990-01-01';

SELECT *
FROM customers
WHERE points > 3000 OR birth_date > '1990-01-01';

SELECT *
FROM customers
WHERE points > 1000 OR birth_date > 1889 AND state = 'VA';

SELECT *
FROM customers
WHERE points > 1000 AND birth_date > '1989-01-01' OR state = 'VA';

SELECT *
FROM customers
WHERE NOT (state = 'FL');

-- ORDER of logical operators:
-- 1. NOT
-- 2. AND
-- 3. OR 


SELECT *
FROM customers
WHERE state = 'FL' OR state = 'VA' OR state = 'GA';

SELECT *
FROM customers
WHERE state IN ('FL','VA', 'GA');

SELECT *
FROM products
WHERE quantity_in_stock IN ('49' ,'38','72');

SELECT *
FROM products
WHERE quantity_in_stock !='72';

USE exercise_hr;
SELECT first_name, last_name, salary
FROM employees
WHERE NOT (salary >= 10000 AND salary <= 15000);

SELECT first_name, last_name, salary
FROM employees
WHERE NOT (salary BETWEEN 10000 AND 15000);

USe store;


SELECT *
FROM customers
WHERE points BETWEEN 3000 AND 10000;

SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';

-- last name ends in y

SELECT *
FROM customers
WHERE last_name LIKE '%y';

SELECT *
FROM customers
WHERE last_name LIKE 'Mac%';

-- first name contains ba

SELECT *
FROM customers
WHERE first_name LIKE '%ba%';

SELECT *
FROM customers
WHERE address LIKE '%trail%' OR address LIKE '%avenue%';

SELECT *
FROM customers
WHERE address LIKE '%avenue%';

SELECT *
FROM customers
WHERE phone LIKE '%9';

-- write a query to display the first_name of all employees who have both "b" and "c" in the first_name

USE exercise_hr;
SELECT first_name
FROM employees
WHERE first_name LIKE '%b%' AND first_name LIKE '%c%';

SELECT first_name
FROM employees
WHERE first_name LIKE '%b%c%';

-- write a query to display the last_name of all employees whose nams have exactly 6 characters



SELECT *
FROM employees
WHERE last_name LIKE '______';


-- last_name ending with y and having 6 letters

USE store;

SELECT *
FROM customers
WHERE last_name LIKE '_____y';


-- last_name starting with b ending with y and having 6 letters
SELECT *
FROM customers
WHERE last_name LIKE 'b%y' AND last_name LIKE '______';

SELECT *
FROM customers
WHERE last_name LIKE 'b____y';


-- write a query to find all customers having last_names that contain 'age'

SELECT *
FROM Customers
WHERE last_name LIKE '%age%'; 

SELECT *
FROM Customers
WHERE last_name REGEXP 'age';  

 
-- last_name starts with Mac
SELECT *
FROM customers
WHERE last_name REGEXP '^Mac';


-- last_name ends with find
SELECT *
FROM customers
WHERE last_name REGEXP 'field$';

-- last_name starts with Mac or ends with field
SELECT *
FROM customers
WHERE last_name REGEXP '^Mac|field$';

-- last name contains ae/be/ce/de/ee/fe/ge/he

SELECT *
FROM customers
WHERE last_name REGEXP 'ae|be|cde|ee|fe|ge|he';


SELECT*
FROM customers
WHERE last_name REGEXP '[a-h]e';

/* 
REGEXP:
^ (caret) - starts with
$ (dollor)- ends with
*/

USE store;
SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e';

-- last name starts EY or ON
SELECT *
FROM customers
WHERE last_name REGEXP 'EY$|ON$';


-- last_name start with MY or contain SE 
SELECT *
FROM customers
WHERE last_name REGEXP '^MY|SE';


-- last_name contaoins B followd by R or U 
SELECT *
FROM customers
WHERE last_name REGEXP 'BR|BU';

SELECT *
FROM customers
WHERE last_name REGEXP 'B*R|B*U';

SELECT *
FROM customers
WHERE last_name REGEXP 'b[a-z]*[ru]';

USE store;
-- NULL operator
-- slect customers where phone is null

SELECT *
FROM customers
WHERE phone is NULL;

-- slect customers where phone is not null
SELECT *
FROM customers
WHERE phone is NOT NULL;

-- Get 
SELECT *
FROM orders
WHERE shipper_id IS NULL;








