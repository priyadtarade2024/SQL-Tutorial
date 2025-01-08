SQL JOINS
=========
INNER JOIN :
			Returns only the rows that have matching values in both tables.
			If there is no match, the row is not included in the result.
			ex: SELECT column1, column2
				FROM table1
				INNER JOIN table2 ON table1.column = table2.column;


LEFT OUTER JOIN :
			Returns all rows from the left table and the matching rows from the right table.
			If there is no match, NULL values are returned for columns from the right table.
			ex:
			SELECT column1, column2
			FROM table1
			LEFT JOIN table2 ON table1.column = table2.column;

RIGHT OUTER JOIN
			Returns all rows from the right table and the matching rows from the left table.
			If there is no match, NULL values are returned for columns from the left table.
			ex: SELECT column1, column2
				FROM table1
				RIGHT JOIN table2 ON table1.column = table2.column;


FULL OUTER JOIN :Returns all rows when there is a match in either the left or the right table.
				If there is no match, NULL values are returned for columns from the table without a match.
				ex:SELECT column1, column2
					FROM table1
					FULL JOIN table2 ON table1.column = table2.column;


SELF JOIN  :A self join is a join of a table with itself. It’s typically used to compare rows within the same table.
		ex:SELECT a.column1, b.column2
			FROM table a, table b
			WHERE a.column = b.column;


NATURAL JOIN :
			A natural join automatically joins tables based on columns with the same name and data type in both tables.
			ex:SELECT column1, column2
				FROM table1
				NATURAL JOIN table2;


CROSS JOIN :
			Returns the Cartesian product of the two tables. Every row in the first table is joined with every row in the second table.
			Be cautious: It can result in a very large number of rows if both tables are large.
			ex:SELECT column1, column2
				FROM table1
				CROSS JOIN table2;









