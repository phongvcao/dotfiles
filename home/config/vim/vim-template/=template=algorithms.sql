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



UPDATE students SET age = 23 WHERE name = 'Mark Smith' OR name = 'Alex Kim';

UPDATE students SET gender = 'M' WHERE name = 'Adam Smith';



DELETE FROM students WHERE name = 'Mark Smith' OR name = 'Alex Kim';

DELETE FROM students WHERE name = 'Adam Smith';



/* This selects the name of each student along with the name of the course they
 * are enrolled in using an inner join.
 */
SELECT students.name, courses.name
FROM students
INNER JOIN courses ON students.id = courses.id;



/* This selects the name of each student along with the name of the course they
 * are enrolled in using a left join. Students without a course will still be 
 * included in the result set, with a null value for the course name.
 */
SELECT students.name, courses.name
FROM students
LEFT JOIN courses ON students.id = courses.id;



/* This selects the name of each student along with the name of the course they
 * are enrolled in using a right join. Courses without a student will still be
 * included in the result set, with a null value for the student name.
 */
SELECT students.name, courses.name
FROM students
RIGHT JOIN courses ON students.id = courses.id;


/* Full Outer Join (MySQL does not have a full outer join, but we can simulate
 * it using a union of a left join and a right join):
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
