AGGREGATE FUNCTIONS
======================
COUNT() :Counts the number of rows .
		ex: SELECT COUNT(*) AS total_employees FROM employees;

MIN(): Returns the minimum value in a column.
		ex: SELECT MIN(salary) AS lowest_salary FROM employees;

MAX() :Returns the maximum value in a column.
		ex:SELECT MAX(salary) AS highest_salary FROM employees;


SUM()	: Calculates the total sum of a numeric column.
		ex:SELECT SUM(salary) AS total_salary FROM employees;

AVG():Calculates the average value of a numeric column.
		ex: SELECT AVG(salary) AS average_salary FROM employees;

STDDEV() : Returns the standard deviation of a set of values.
		ex:SELECT STDDEV(salary) AS salary_stddev FROM employees;

VARIANCE():Returns the variance of a set of values.
		ex:SELECT VARIANCE(salary) AS salary_variance FROM employees;

