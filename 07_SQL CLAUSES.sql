CLAUSES IN ORACLE 
==================

FROM		Specifies the table(s) or view(s) from which to retrieve data.
			ex: SELECT * 
				FROM employees;

WHERE	: Filters rows based on specified conditions.
			ex: SELECT first_name, salary
				FROM employees
				WHERE salary > 5000;

GROUP BY :Groups rows with the same values into summary rows.
			ex: SELECT department_id, AVG(salary) AS avg_salary
				FROM employees
				GROUP BY department_id;

HAVING : Filters grouped rows based on conditions.
		ex: SELECT department_id, AVG(salary) AS avg_salary
			FROM employees
			GROUP BY department_id
			HAVING AVG(salary) > 10000;

ORDER BY :Sorts the result set in ascending or descending order.
		ex: SELECT first_name, salary
			FROM employees
			ORDER BY salary DESC;

LIMIT / FETCH Clause : Limits the number of rows returned.
		ex: SELECT first_name, salary
			FROM employees
			FETCH FIRST 10 ROWS ONLY;
