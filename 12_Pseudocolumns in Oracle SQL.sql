PSEUDOCOLUMNS:
===============
 pseudocolumns are special columns that are not actually stored in the database table but provide additional functionality. 
 They can be used in queries just like regular columns.
 
 ROWID:
 ========
		 Represents the unique identifier for a row in a table.
		It is used for fast access to rows.

		EX: SELECT ROWID, employee_name FROM employees;

ROWNUM :
========
		Provides a unique number for each row returned by a query, starting from 1.
		
		EX:SELECT ROWNUM, employee_name FROM employees;


LEVEL:
=====
		Used in hierarchical queries (with the CONNECT BY clause) to represent the level of a row in a tree structure.

		EX: SELECT LEVEL, employee_name FROM employees
		CONNECT BY PRIOR employee_id = manager_id;

SYSDATE :
=========
		Returns the current system date and time.

		EX:SELECT SYSDATE FROM dual;

USER:
====
		Returns the current database username.
		
		ex:SELECT USER FROM dual;


UID:
====
		Returns the unique identifier for the current user.

		ex: SELECT UID FROM dual;


CURRENT_USER:
============
		Returns the name of the user currently connected to the database.
		EX:
		SELECT CURRENT_USER FROM dual;


SESSION_USER:
============
		Returns the name of the user who initiated the session.

		ex: SELECT SESSION_USER FROM dual;
