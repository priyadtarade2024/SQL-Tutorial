SQL VARIABLES  : CONTAINER FOR VALUES .
===================

syntax:
    VARIABLE_NAME DATATYPE(PRECISION,SIZE)


SQL  DATATYPES: TYPE OF VALUE
====================

NUMBER(P,S)
CHAR(SIZE)
VARCHAR2(SIZE)
DATE
BOOLEAN


SQL OPERATORS : 
=================================

UNARY OP : +,-,++,--

BINARY OPERATORS : 
                ARITHMETIC OP: =,-,*,/
                RELATIONAL OP:  <,<=,>,>=,=
                LOGICAL OP   :  AND,OR,NOT
                CONCATENATION OP-  ::
                
                ANOTHER IMP OPERATORS:
                ---------------------
                                    ALL      :COMPARES A VALUE TO ALL VALUES IN A SUBQUERY.
												ex: SELECT * FROM employees WHERE salary > ALL (SELECT salary FROM employees WHERE department_id = 10);


                                    ANY      :COMPARES A VALUE TO ANY VALUE IN A SUBQUERY.
												ex:SELECT * FROM employees WHERE salary > ANY (SELECT salary FROM employees WHERE department_id = 10);

                                    DISTINCT : RETRIEVES UNI RECORDS IN RESULT SET.
												EX: SELECT DISTINCT department_id FROM employees;

                                    BETWEEN  :Filters values within a range (inclusive).
												ex: SELECT * FROM employees WHERE salary BETWEEN 3000 AND 7000;

                                    IS       : Tests for equality or specific conditions.
												ex: SELECT * FROM employees WHERE department_id IS NULL;

                                    IS NOT   : Tests for inequality or opposite conditions.
												EX:SELECT * FROM employees WHERE department_id IS NOT NULL;

                                    IN       :Filters rows where a column matches any value in a list.
											ex :SELECT * FROM employees WHERE department_id IN (10, 20, 30);

                                    NOT IN   :Filters rows where a column does not match any value in a list.
											ex:SELECT * FROM employees WHERE department_id NOT IN (10, 20, 30);

                                    LIKE     :Filters rows based on a pattern match.
											ex: SELECT * FROM employees WHERE first_name LIKE 'A%';

                                    NOT LIKE :Filters rows that do not match a pattern.
										    ex: SELECT * FROM employees WHERE first_name NOT LIKE 'A%';

                                    EXISTS   :Checks if a subquery returns any rows.
											ex:SELECT * FROM employees WHERE EXISTS (SELECT 1 FROM departments 
											WHERE departments.manager_id = employees.employee_id);

                                    NOT EXISTS: Checks if a subquery does not return any rows.
											ex:SELECT * FROM employees WHERE NOT EXISTS (SELECT 1 FROM departments 
											WHERE departments.manager_id = employees.employee_id);

SET OPERATORS :
                                UNION		:Combines the results of two queries.
											Removes duplicate rows from the result set.
											The rows in the result set are sorted in ascending order by default.

											SELECT column1, column2, ...
											FROM table1
											UNION
											SELECT column1, column2, ...
											FROM table2;

											EX: SELECT first_name FROM employees
												UNION
												SELECT first_name FROM customers;

                                UNION ALL   :Combines the results of two queries.
											Includes all rows in the result set, including duplicates.
											No sorting is performed by default.
											
											SELECT column1, column2, ...
											FROM table1
											UNION ALL
											SELECT column1, column2, ...
											FROM table2;

											EX: SELECT first_name FROM employees
												UNION ALL
												SELECT first_name FROM customers;
                                MINUS       :Returns rows from the first query that are not present in the second query.
												Removes duplicates from the result set.
												SELECT column1, column2, ...
												FROM table1
												MINUS
												SELECT column1, column2, ...
												FROM table2;

											EX: SELECT first_name FROM employees
												MINUS
												SELECT first_name FROM customers;
                                INTERSECT   :Returns rows that are common to both queries.
											Removes duplicates from the result set.
											
											SYNTAX: 
												SELECT column1, column2, ...
												FROM table1
												INTERSECT
												SELECT column1, column2, ...
												FROM table2;
												
											SELECT first_name FROM employees
											INTERSECT
											SELECT first_name FROM customers;

                                
                