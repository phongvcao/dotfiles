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
SELECT select_statement;

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

UPDATE students SET age = 23 WHERE name = 'Mark Smith' OR name = 'Alex Kim';

UPDATE students SET gender = 'M' WHERE name = 'Adam Smith';



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
 * NOTE that the square brackets indicate that the enclosed items are optional.
 */
SELECT [DISTINCT | ALL] select_expression [, select_expression ...]
FROM table_reference [, table_reference ...]
[WHERE where_condition]
[GROUP BY {col_name | expr | position} [, {col_name | expr | position} ...]]
[HAVING where_condition]
[ORDER BY {col_name | expr | position} [ASC | DESC] [, {col_name | expr | position} [ASC | DESC] ...]]
[LIMIT {[offset,] row_count | row_count OFFSET offset}]



/*
 * This selects the name of each student along with the name of the course they
 * are enrolled in using an inner join.
 */
SELECT students.name, courses.name
FROM students
INNER JOIN courses ON students.id = courses.id;



/*
 * This selects the name of each student along with the name of the course they
 * are enrolled in using a left join. Students without a course will still be 
 * included in the result set, with a null value for the course name.
 */
SELECT students.name, courses.name
FROM students
LEFT JOIN courses ON students.id = courses.id;



/* 
 * This selects the name of each student along with the name of the course they
 * are enrolled in using a right join. Courses without a student will still be
 * included in the result set, with a null value for the student name.
 */
SELECT students.name, courses.name
FROM students
RIGHT JOIN courses ON students.id = courses.id;



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
