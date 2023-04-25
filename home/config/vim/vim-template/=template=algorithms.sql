/*
 * Here's the basic syntax for creating a table in MySQL:
 *
 *     table_name is the name of the table you want to create
 *
 *     column1, column2, column3, etc. are the names of the columns in the table
 *
 *     datatype is the data type of the column
 *
 *     constraints can include any additional constraints, such as NOT NULL,
 *     DEFAULT, etc.
 * 
 *     PRIMARY KEY creates a primary key constraint on the specified column(s)
 *
 *     UNIQUE creates a unique constraint on the specified column(s)
 *
 *     CHECK creates a check constraint on the specified column(s)
 *
 *     FOREIGN KEY creates a foreign key constraint on the specified column(s),
 *     referencing a column in another table
 *
 *     NOTE that you can have multiple constraints of each type on different
 *     columns. Also, the CONSTRAINT keyword is optional, but it can be useful
 *     for giving a name to the constraint.
 */
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    column3 datatype constraints,
    ...
    PRIMARY KEY (column1),
    UNIQUE (column2),
    CONSTRAINT constraint_name CHECK (column3 > 0),
    CONSTRAINT constraint_name FOREIGN KEY (column4) REFERENCES other_table(column4)
);

CREATE TABLE students (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT(3) NOT NULL,
    gender ENUM('M', 'F') NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE courses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  instructor VARCHAR(255) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  num_students INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  is_online TINYINT(1) NOT NULL,
  description TEXT,
  PRIMARY KEY (id)
);



/*
 * Here is a complete syntax for the INSERT statement in MySQL:
 *
 *     INSERT INTO is an optional keyword to specify that data is being
 *     inserted into a table.
 *
 *     table_name is the name of the table to insert data into.
 *
 *     column1, column2, ..., columnN are optional column names to insert data 
 *     into. If omitted, all columns must have a corresponding value in the
 *     VALUES clause.
 *
 *     VALUES is a keyword that separates the column names from the values
 *     being inserted.
 *
 *     value1, value2, ..., valueN are the values to insert into the specified
 *     columns. The number of values must match the number of columns specified.
 *
 *     SELECT is a keyword that indicates the values to insert are the result
 *     of a query.
 *
 *     select_statement is a valid SELECT statement that returns the data to be
 *     inserted into the specified table.
 *
 *     NOTE that if you are inserting multiple rows, you can specify multiple
 *     sets of values or multiple rows in the SELECT statement.
 */
INSERT [INTO] table_name [(column1 [, column2, ..., columnN])]
VALUES (value1 [, value2, ..., valueN]);

INSERT [INTO] table_name [(column1 [, column2, ..., columnN])]
SELECT column1, column2, columnn3, ...
FROM source_table
WHERE condition;

INSERT INTO students (name, age, gender) VALUES
    ('John Doe', 18, 'M'),
    ('Jane Doe', 19, 'F'),
    ('Mark Smith', 20, 'M'),
    ('Sarah Johnson', 21, 'F'),
    ('David Lee', 19, 'M'),
    ('Emily Chen', 18, 'F'),
    ('Alex Kim', 20, 'M'),
    ('Maggie Wong', 19, 'F'),
    ('Brian Park', 21, 'M'),
    ('Karen Zhang', 18, 'F');

INSERT INTO students (name, age, gender) VALUES
  ('Adam Smith', 22, 'M');

INSERT INTO students (name, age, gender) VALUES
  ('Rachel Lee', 20, 'F');

INSERT INTO courses (name, instructor, start_date, end_date, num_students, price, is_online, description) VALUES
  ('Introduction to Programming', 'John Smith', '2023-06-01', '2023-07-01', 25, 99.99, 1, 'Learn the basics of programming in this introductory course.'),
  ('Web Development', 'Jane Doe', '2023-07-01', '2023-08-01', 20, 199.99, 0, 'Build dynamic web applications using HTML, CSS, and JavaScript.'),
  ('Database Systems', 'Mark Lee', '2023-08-01', '2023-09-01', 15, 149.99, 1, 'Explore the fundamentals of database design and query language.'),
  ('Data Science', 'Sarah Johnson', '2023-09-01', '2023-10-01', 10, 299.99, 1, 'Learn how to extract insights from large data sets using statistical techniques.');



/*
 * Here is the complete syntax for the UPDATE statement in MySQL:
 *
 *     Here, table_name is the name of the table that you want to update, and
 *     column_name is the name of the column that you want to update.
 *
 *     The expression specifies the new value that you want to assign to the 
 *     column, and you can update multiple columns at once by separating the 
 *     column/value pairs with commas.
 *
 *     The optional LOW_PRIORITY and IGNORE keywords affect how the UPDATE
 *     statement behaves under certain circumstances.
 *
 *     The WHERE clause specifies the condition that must be met in order for
 *     the  update to occur. If you do not include a WHERE clause, all rows in
 *     the t will be updated.
 *
 *     You can also use the ORDER BY and LIMIT clauses to control the order in 
 *     which rows are updated, and to limit the number of rows that are updated.
 */
UPDATE [LOW_PRIORITY] [IGNORE] table_name
SET column_name1 = expression1, column_name2 = expression2, ...
[WHERE condition]
[ORDER BY ...]
[LIMIT row_count]

UPDATE [LOW_PRIORITY] [IGNORE] table_name
SET column_name1 = expression1, column_name2 = expression2, ...
[WHERE column_name = (SELECT column_name FROM table_name WHERE condition)]
[ORDER BY ...]
[LIMIT row_count]

UPDATE students SET age = 23 WHERE name = 'Mark Smith' OR name = 'Alex Kim';

UPDATE students SET gender = 'M' WHERE name = 'Adam Smith';

UPDATE my_table
SET column1 = CASE
   WHEN column2 = 'value1' THEN 'new_value1'
   WHEN column2 = 'value2' THEN 'new_value2'
   ELSE column1
END
WHERE column3 = 'some_value';

UPDATE Salary
SET sex =
CASE
    WHEN sex = "f" then "m"
    ELSE "f"
END;



/*
 * The complete syntax for the DELETE statement in MySQL:
 *
 *     Here, table_name is the name of the table from which you want to delete
 *     data, and condition specifies the condition that must be met in order
 *     for the row to be deleted.
 *
 *     If you do not include a WHERE clause, the DELETE statement will delete
 *     all rows from the table.
 *
 *     The optional LOW_PRIORITY, QUICK, and IGNORE keywords affect how the
 *     DELETE statement behaves under certain circumstances.
 *
 *     You can also use the ORDER BY and LIMIT clauses to control the order in
 *     which rows are deleted, and to limit the number of rows that are deleted.
 */
DELETE [LOW_PRIORITY] [QUICK] [IGNORE] FROM table_name
[WHERE condition]
[ORDER BY ...]
[LIMIT row_count]

DELETE [LOW_PRIORITY] [QUICK] [IGNORE] FROM table_name
[WHERE column_name IN (SELECT column_name FROM TABLE_NAME WHERE condition)]
[ORDER BY ...]
[LIMIT row_count]

DELETE FROM students WHERE name = 'Mark Smith' OR name = 'Alex Kim';

DELETE FROM students WHERE name = 'Adam Smith';



/*
 * The complete syntax for a SELECT statement in MySQL is as follows:
 * 
 *     DISTINCT or ALL (optional) specifies whether duplicate rows should be
 *     removed from the result set or not. If neither is specified, ALL is the
 *     default.
 *
 *     select_expression specifies the columns to select from the table(s).
 *
 *     table_reference specifies the table(s) to select from.
 *
 *     WHERE (optional) specifies the conditions that must be met by the rows
 *     to be selected.
 *
 *     GROUP BY (optional) groups the result set by one or more columns or
 *     expressions.
 *
 *     HAVING (optional) specifies the conditions that must be met by the
 *     groups selected by the GROUP BY clause.
 *
 *     ORDER BY (optional) specifies the order in which the rows should be
 *     sorted.
 *
 *     LIMIT (optional) limits the number of rows returned.
 *
 *     NOTE that the square brackets indicate that the enclosed items are
 *     optional.
 */
SELECT [DISTINCT | ALL] select_expression [, select_expression ...]
FROM table_reference [, table_reference ...]
[WHERE where_condition]
[GROUP BY {col_name | expr | position} [, {col_name | expr | position} ...]]
[HAVING where_condition]
[ORDER BY {col_name | expr | position} [ASC | DESC] [, {col_name | expr | position} [ASC | DESC] ...]]
[LIMIT {[offset,] row_count | row_count OFFSET offset}]



/*
 * GROUP BY: Group rows from a table based on one or more columns.
 *
 *     It allows you to perform aggregate functions (such as SUM(), COUNT(),
 *     AVG(), MIN(), MAX(), etc.) on the groups, and return a single row for
 *     each group.
 */
SELECT column1, column2, ..., aggregate_function(columnX)
FROM table_name
WHERE condition
GROUP BY column1, column2, ...

SELECT actor_id, director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(timestamp) >= 3;



/*
 * This selects the name of each student along with the name of the course they
 * are enrolled in using an inner join.
 */
SELECT students.name, courses.name
FROM students
INNER JOIN courses ON students.id = courses.id;

SELECT students.name, courses.name
FROM students
JOIN courses ON students.id = courses.id;

SELECT MIN(ABS(p1.x - p2.x)) AS shortest
FROM Point AS p1 INNER JOIN Point AS p2 ON p2.x > p1.x
WHERE ABS(p1.x - p2.x) != 0;

SELECT MIN(ABS(p1.x - p2.x)) AS shortest
FROM Point AS p1 JOIN Point AS p2 ON p2.x > p1.x
WHERE ABS(p1.x - p2.x) != 0;

SELECT customers.name
FROM customers
INNER JOIN (
  SELECT customer_id
  FROM orders
  WHERE order_date = '2023-04-24'
) AS subquery
ON customers.id = subquery.customer_id;

SELECT customers.name
FROM customers
JOIN (
  SELECT customer_id
  FROM orders
  WHERE order_date = '2023-04-24'
) AS subquery
ON customers.id = subquery.customer_id;



/*
 * This performs multiplication OF the 2 tables using Matrix multiplication
 * by using JOIN without any ON conditioning.
 */
SELECT students.name, courses.name
FROM students
INNER JOIN courses;



/*
 * This selects the name of each student along with the name of the course they
 * are enrolled in using a left join. Students without a course will still be 
 * included in the result set, with a null value for the course name.
 */
SELECT students.name, courses.name
FROM students
LEFT JOIN courses ON students.id = courses.id;

SELECT MIN(ABS(p1.x - p2.x)) AS shortest
FROM Point AS p1 LEFT JOIN Point AS p2 ON p2.x > p1.x
WHERE ABS(p1.x - p2.x) != 0;



/* 
 * This selects the name of each student along with the name of the course they
 * are enrolled in using a right join. Courses without a student will still be
 * included in the result set, with a null value for the student name.
 */
SELECT students.name, courses.name
FROM students
RIGHT JOIN courses ON students.id = courses.id;

SELECT MIN(ABS(p1.x - p2.x)) AS shortest
FROM Point AS p1 RIGHT JOIN Point AS p2 ON p2.x > p1.x
WHERE ABS(p1.x - p2.x) != 0;



/* 
 * Full Outer Join (MySQL does not have a full outer join, but we can simulate
 * it using a union of a left join and a right join):
 *
 * This selects the name of each student along with the name of the course they
 * are enrolled in using a full outer join. This is achieved by taking the
 * union of a left join and a right join, which combines the rows from both
 * tables where the join condition is true, and includes any non-matching rows
 * from both tables.
 */
SELECT students.name, courses.name
FROM students
LEFT JOIN courses ON students.id = courses.id
UNION
SELECT students.name, courses.name
FROM students
RIGHT JOIN courses ON students.id = courses.id;



/*
 * UNION: Combine the results of two or more SELECT statements into a single
 * result set that INCLUDES ONLY DISTINCT ROWS.
 *
 * NOTE: The rows in the two SELECT statements of a UNION or UNION ALL
 *       statement do not have to be the same.
 *
 *       However, the columns selected in each SELECT statement must have the
 *       same data types and be in the same order in both statements, and the
 *       number of columns in each SELECT statement must be the same.
 */
SELECT column1, column2, ..., columnN
FROM table1
[WHERE condition1]
UNION
SELECT column1, column2, ..., columnN
FROM table2
[WHERE condition2];



/*
 * UNION ALL: Combine the results of two or more SELECT statements into a
 * single result set, but it includes all rows, including duplicates
 *
 * NOTE: The rows in the two SELECT statements of a UNION or UNION ALL
 *       statement do not have to be the same.
 *
 *       However, the columns selected in each SELECT statement must have the
 *       same data types and be in the same order in both statements, and the
 *       number of columns in each SELECT statement must be the same.
 */
SELECT column1, column2, ..., columnN
FROM table1
[WHERE condition1]
UNION ALL
SELECT column1, column2, ..., columnN
FROM table2
[WHERE condition2];



/*
 * NOT IN: Exclude values that match a subquery result or a list of explicit
 * values. It can be a useful tool for filtering data in complex queries.
 */
SELECT * 
FROM employees 
WHERE department_id NOT IN 
  (SELECT department_id 
   FROM departments 
   WHERE department_name = 'Sales');

SELECT * 
FROM employees 
WHERE department_id NOT IN (1, 3, 5);



/*
 * The general format of a SELECT CASE statement in MySQL:
 *
 *     expression is the column or expression you want to evaluate.
 *
 *     value1, value2, etc. are the values you want to compare the expression
 *     to.
 *
 *     result1, result2, etc. are the results you want to output if the
 *     expression matches the corresponding value.
 *
 *     ELSE is an optional keyword that specifies the result to output if none
 *     of the previous conditions match. If no ELSE clause is specified and
 *     none of the conditions match, the result will be NULL.
 *
 *     output_column is the alias name you want to give to the result column.
 */
SELECT
   CASE expression
      WHEN value1 THEN result1
      WHEN value2 THEN result2
      ...
      [ELSE else_result]
   END as output_column
FROM table_name;

SELECT
   CASE
      WHEN sales >= 1000 THEN 'High'
      WHEN sales >= 500 AND sales < 1000 THEN 'Medium'
      ELSE 'Low'
   END as sales_category
FROM sales_data;



/*
 * In MySQL, you can use the LIKE operator to match a value against patterns.
 *
 * The basic syntax for using LIKE is as follows:
 *
 * The LIKE operator uses two special characters to match patterns:
 *     %: Matches any string of zero or more characters
 *     _: Matches any single character
 */
SELECT column_name(s)
FROM table_name
WHERE column_name LIKE pattern;

/* 
 * To select all the rows from a table called my_table where the name column
 * starts with the letter "J", you can use the following query:
 */
SELECT *
FROM my_table
WHERE name LIKE 'J%';

/* 
 * To select all the rows from a table called my_table where the name column
 * contains the letter "o" as the second character, you can use the following
 * query:
 */
SELECT *
FROM my_table
WHERE name LIKE '_o%';



/*
 * AVG: Returns the average value of a numeric column.
 */
SELECT AVG(salary)
FROM employees;



/*
 * CONCAT: Concatenates two or more strings together.
 */
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;



/*
 * COUNT: Returns the number of rows in a table or the number of non-NULL
 * values in a column.
 */
SELECT COUNT(*)
FROM employees;



/*
 * DATE_FORMAT: Formats a date value based on the specified format.
 */
SELECT DATE_FORMAT(hire_date, '%m/%d/%Y') AS formatted_hire_date
FROM employees;



/*
 * IF: Returns a value based on a condition.
 */
SELECT IF(salary > 50000, 'High Salary', 'Low Salary') AS salary_level
FROM employees;



/*
 * MAX: Returns the maximum value in a column.
 */
SELECT MAX(salary)
FROM employees;

SELECT salary
FROM employees
ORDER BY salary DESC
LIMIT 1

SELECT COUNT(employee_id)
FROM Project
GROUP BY project_id
ORDER BY COUNT(employee_id) DESC
LIMIT 1



/*
 * MIN: Returns the minimum value in a column.
 */
SELECT MIN(salary)
FROM employees;

SELECT salary
FROM employees
ORDER BY salary ASC
LIMIT 1

SELECT COUNT(employee_id)
FROM Project
GROUP BY project_id
ORDER BY COUNT(employee_id) ASC
LIMIT 1

SELECT player_id, MIN(event_date)
FROM Activity
GROUP BY player_id;



/*
 * NOW: Returns the current date and time.
 */
SELECT NOW() AS current_datetime;



/*
 * STR_TO_DATE: Convert date & time string to DATE objects.
 */
SELECT *
FROM orders
WHERE DATE(created_at) = STR_TO_DATE('2023-04-23 00:00:00', '%Y-%m-%d %H:%i:%s');



/*
* DATE_FORMAT: Convert DATE objects TO date & time string
*/
SELECT DATE_FORMAT(date_column, '%Y-%m-%d %H:%i:%s') AS datetime_string
FROM my_table;



/*
 * ROUND: Rounds a numeric value to a specified number of decimal places.
 */
SELECT ROUND(salary, 2) AS rounded_salary
FROM employees;



/*
 * SUBSTRING: Extracts a substring from a string.
 */
SELECT SUBSTRING(first_name, 1, 3) AS initials 
FROM employees;



/*
 * DATEDIFF: Gets the difference BETWEEN 2 dates.
 */
SELECT *
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id
WHERE DATEDIFF(CURDATE(), orders.order_date) <= 30;



/*
 * DIV: Gets the integer division result of 2 numbers.
 */
SELECT *
FROM my_table
WHERE column1 DIV 10 = 5;



/*
 * MOD: Gets the integer modulo result of 2 numbers.
 */
SELECT *
FROM numbers
WHERE MOD(num, 3) = 0;

SELECT *
FROM numbers
WHERE num % 3 = 0;



/*
 * '/': Gets the float / double division result of 2 numbers.
 */
SELECT product_id, price 
FROM products 
WHERE price / 10 < 1;



/*
 * ABS: Gets absolute difference of 2 numbers.
 */
SELECT ABS(score1 - score2) AS absolute_difference
FROM scores;



/*
 * SQRT(x): returns the square root of x.
 */
SELECT SQRT(25);

SELECT SQRT(my_column) FROM my_table;



/*
 * POWER(x, y): returns x raised to the power of y.
 */
SELECT POWER(2, 3);

SELECT POWER(my_column, 2) FROM my_table;



/*
 * LOG(x): returns the natural logarithm (base e) of x.
 */
SELECT LOG(2.718281828);

SELECT LOG(my_column) FROM my_table;



/*
 * LOG10(x): returns the base-10 logarithm of x.
 */
SELECT LOG10(1000);

SELECT LOG10(my_column) FROM my_table;



/*
 * DISTINCT: Return only distinct (unique) values in a query result.
 *
 *           It is often used in conjunction with the SELECT statement to
 *           remove duplicate values from the output.
 *
 *           Can be used in conjunction with any aggregate function, including
 *           COUNT, SUM, AVG, MIN, and MAX, to retrieve unique values from the 
 *           result set.
 */
SELECT DISTINCT column_name1, column_name2, ...
FROM table_name;
WHERE condition;

SELECT aggregate_function(DISTINCT column_name)
FROM table_name
WHERE condition;



/*
 * Here is a comprehensive list of aggregate functions in MySQL:
 *
 *     AVG(): Calculates the average of the selected values.
 *
 *     COUNT(): Returns the number of rows in the selected column.
 *
 *     MAX(): Returns the maximum value of the selected column.
 *
 *     MIN(): Returns the minimum value of the selected column.
 *
 *     SUM(): Calculates the sum of the selected values.
 *
 *     GROUP_CONCAT(): Concatenates strings from multiple rows into a single
 *                     string.
 *
 *     STD(): Calculates the standard deviation of a population.
 *
 *     STDDEV_POP(): Calculates the standard deviation of a population.
 *
 *     STDDEV_SAMP(): Calculates the standard deviation of a sample.
 *
 *     VAR_POP(): Calculates the variance of a population.
 *
 *     VAR_SAMP(): Calculates the variance of a sample.
 *
 *     VARIANCE(): Calculates the variance of a population or sample, depending
 *                 on the context.
 * 
 * These functions can be used in the SELECT statement with or without the
 * DISTINCT keyword to calculate aggregate values over selected columns or
 * groups of rows.
 *
 * NOTE: GROUP BY clause is used to group rows before applying aggregate
 *       functions, and must be used in conjunction with the SELECT statement
 *       or HAVING clause when using aggregate functions.
 *
 *       Aggregate functions in MySQL can be placed in the SELECT statement,
 *       HAVING clause, and ORDER BY clause.
 *
 *       In the SELECT statement, aggregate functions are used to calculate
 *       values over columns or groups of rows, and can be used with or without
 *       the DISTINCT keyword.
 *
 *       In the HAVING clause, aggregate functions are used to filter groups of
 *       rows based on a specified condition.
 *
 *       In the ORDER BY clause, aggregate functions are used to sort the
 *       output of the SELECT statement by the calculated aggregate values.
 */



/*
 * COMPLEX EXAMPLES:
 */
SELECT ROUND(IFNULL(
        (SELECT COUNT(DISTINCT requester_id, accepter_id) FROM RequestAccepted)
        /
        (SELECT COUNT(DISTINCT sender_id, send_to_id) FROM FriendRequest), 0), 2)
AS accept_rate;
