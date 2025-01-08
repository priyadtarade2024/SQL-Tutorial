TCL STATEMENTS : used to manage changes made by DML STMTS.
======================

COMMIT : SAVE DATA PERMANENTLY 

EX: 
INSERT INTO employees (id, name) VALUES (101, 'John');
COMMIT;


ROLLABCK :REVERTS THE DATABASE TO ITS PREVIOUS State, UNDOING CHANGES MADE BY THE CURRENT TRANSACTION.

EX: 
UPDATE employees SET salary = 5000 WHERE id = 101;
ROLLBACK;


SAVEPOINT :Sets a point within a transaction to which you can later roll back.

SYNTAX: SAVEPOINT savepoint_name;

UPDATE employees SET salary = 6000 WHERE id = 101;
SAVEPOINT salary_update;

UPDATE employees SET name = 'Jane' WHERE id = 101;
ROLLBACK TO salary_update; -- Rolls back only to the savepoint
