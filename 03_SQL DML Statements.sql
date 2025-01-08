SQL DML STATEMENTS : 
======================
DML: DATA MANIPULATTION LANGUAGE
  USED TO MODIFY OBJECTS IN SQL
  
SELECT : USED TO RETRIEVE SPECIFIC DATA IN TABLE.

--Retrieve all columns from a table.
SELECT * FROM DUAL;

SELECT * FROM EMP;


--Select specific columns from a table.
SELECT ENAME,JOB,SAL FROM EMP;

SELECT DUMMY FROM DUAL;

--Rename a column in the output using aliases.
SELECT ENAME EMPLOYEE_NAME,JOB DESIGNATION,SAL SALARY  FROM EMP;

--Use the DISTINCT keyword to eliminate duplicates.
SELECT DISTINCT ENAME EMPLOYEE_NAME,JOB FROM EMP;

--Retrieve records with NULL values in a specific column.
SELECT ENAME ,JOB ,SAL ,NULL  FROM EMP;
--=============================================================
INSERT : USED TO INSERT NEW DATA IN TABLE 
        INSERT INTO table_name (column1, column2, column3, ...)
        VALUES (value1, value2, value3, ...);

EX: INSERT INTO EMPLOYEES (EMP_ID, NAME, SALARY)
                        VALUES (101, 'John Doe', 50000);


 OR 
 -- INSERTING DATA WITHOUT SPECIFYING COLUMN NAME
 INSERT INTO EMPLOYEES
VALUES (104, 'Bob Brown', 45000);
--============================================================
UPDATE : USED TO MODIFY EXISTING DATA IN TABLE
SYNTAX: 
        UPDATE table_name
        SET column1 = value1, column2 = value2, ...
        WHERE condition;

    Ex: UPDATE employees
        SET salary = salary * 1.1
        WHERE department_id = 10;

--=================================================================
DELETE : USED TO DELETE SPECIFIC DATA IN TABLE
 SYNTAX: DELETE FROM table_name
        WHERE condition;
        
    EX: DELETE FROM employees
        WHERE employee_id = 101;

