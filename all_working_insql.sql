CREATE DATABASE college;
CREATE DATABASE IF NOT EXISTS college;
USE college;
CREATE TABLE student (
	roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    class VARCHAR(10),
    marks INT NOT NULL,
    gender VARCHAR(10)
    
);
INSERT INTO student
(roll_no, name, class, marks, gender)
VALUES
(1, 'John Deo', 'Four', 75, 'female'),
(2, 'Max Ruin', 'Three', 85, 'male'),
(3, 'Arnold', 'Three', 55, 'male'),
(4, 'Krish Star', 'Four', 60, 'female'),
(5, 'John Mike', 'Four', 60, 'female'),
(6, 'Alex John', 'Four', 55, 'male'),
(7, 'My John Rob', 'Five', 78, 'male'),
(8, 'Asruid', 'Five', 85, 'male'),
(9, 'Tes Qry', 'Six', 78, 'male'),
(10, 'Big John', 'Four', 55, 'female'),
(11, 'Ronald', 'Six', 89, 'female'),
(12, 'Recky', 'Six', 94, 'female'),
(13, 'Kty', 'Seven', 88, 'female'),
(14, 'Bigy', 'Seven', 88, 'female'),
(15, 'Tade Row', 'Four', 88, 'male'),
(16, 'Gimmy', 'Four', 88, 'male'),
(17, 'Tumyu', 'Six', 54, 'male'),
(18, 'Honny', 'Five', 75, 'male'),
(19, 'Tinny', 'Nine', 18, 'male'),
(20, 'Jackly', 'Nine', 65, 'female'),
(21, 'Babby John', 'Four', 69, 'female'),
(22, 'Reggid', 'Seven', 55, 'female'),
(23, 'Herod', 'Eight', 79, 'male'),
(24, 'Tiddy Now', 'Seven', 78, 'male'),
(25, 'Giff Tow', 'Seven', 88, 'male'),
(26, 'Crelea', 'Seven', 79, 'male'),
(27, 'Big Nose', 'Three', 81, 'female'),
(28, 'Rojj Base', 'Seven', 86, 'female'),
(29, 'Tess Played', 'Seven', 55, 'male'),
(30, 'Reppy Red', 'Six', 79, 'female'),
(31, 'Marry Toeey', 'Four', 88, 'male'),
(32, 'Binn Rott', 'Seven', 90, 'female'),
(33, 'Kenn Rein', 'Six', 96, 'female'),
(34, 'Gain Toe', 'Seven', 69, 'male'),
(35, 'Rows Noump', 'Six', 88, 'female');



-- Select distinct col from the table there is no repetation in the table 
SELECT DISTINCT class FROM student;

-- select the provided key from the table and show to you 
SELECT name, gender, marks FROM student;

-- WHERE condition in table to defile some conditions
SELECT * FROM student WHERE marks >= 80;

SELECT * FROM student 
WHERE gender = "female" AND marks + 10  >= 80;

-- comparision operation 
-- Arthemetic operator ( + , - , / , %, * )
-- comparision operator (= , != , > , >= , < , <= )
-- Bitwise operator ( & , | )     
-- Logical Operator (AND , OR , NOT , IN , BETWEEN, ALL, ANY , LIKE)

 
SELECT * FROM student
WHERE marks != 85; 

SELECT * FROM student 
WHERE marks >= 80 AND gender = "male";

SELECT * FROM student 
WHERE marks >= 80 OR gender = "female";

-- Between select between given data like  
SELECT * FROM student 
WHERE marks BETWEEN 60 AND 90;
 
-- IN 
SELECT * FROM student 
WHERE gender IN ("male");

-- NOT IN 
SELECT * FROM student 
WHERE city NOT IN ("Greater Noida", "New Delhi", "Ara", "Patna");

-- LIMIT clause
SELECT * FROM student
WHERE marks = 55
LIMIT 2;

-- ORDER BY CLAUSE
SELECT * FROM student
ORDER BY marks DESC
LIMIT 5;


-- Aggregate Functions
-- MAX 
SELECT MAX(marks)
FROM student;

-- MIN
SELECT MIN(marks)
FROM student;

-- COUNT 
SELECT COUNT(roll_no)
FROM student;
 
-- GROUP CLOUSE
SELECT gender, COUNT(roll_no)
FROM student
GROUP BY gender
HAVING MAX(marks) > 65;

SELECT name, AVG(marks)
FROM student
GROUP BY name;

-- Question 2 
CREATE TABLE payment(
	id INT PRIMARY KEY,
    customer VARCHAR(20),
    mode VARCHAR(20),
    city VARCHAR(20)
);

INSERT INTO payment
(id, customer, mode, city)
VALUE
(101, "Olivia Barrett", "Netbanking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seattle"),
(104, "Liam Donovan", "Netbanking", "Denver"),
(105, "Sophia Nguyen", "Credit Card", "New Orleans"),
(106, "Caleb Foster", "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas Carter", "Netbanking", "Boston"),
(109, "Lsabella Martinez", "Netbanking", "Nashville"),
(110, "Jackson Brooks", "Credit Card", "Boston");

SELECT mode, COUNT(customer)
FROM payment
GROUP BY mode;

-- student2
CREATE TABLE student2(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(30)
);
INSERT INTO student2
(id, name, marks, grade, city)
VALUES
(101, "Nasir Ali", 80, "A", "Greater Noida"),
(102, "Archil Sachan", 65, "B", "Greater Noida"),
(103, "Aniruddh Mahendra Utteker", 85, "A", "Mumbai"),
(104, "Rohit Singh", 50, "C", "Mumbai"),
(105, "Adarsh", 60, "B", "Patna"),
(106, "Anurag Chauhan", 85, "A", "New Delhi"),
(107, "Aadil", 90, "A", "Bulandshar");

SET SQL_SAFE_UPDATES = 0;

SELECT city 
FROM student2
WHERE grade = "A"
GROUP BY city 
HAVING MAX(marks) >= 70
ORDER BY city ASC;

-- Update query
UPDATE student2
SET grade = "O"
WHERE grade = "A";

UPDATE student2
SET marks = "90"
WHERE id = 101;

UPDATE student2
SET marks = marks + 1; 

-- Delete Query
DELETE FROM student2
WHERE marks < 60;



DROP TABLE student2;


-- Foreign Key 

CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
);

-- ADDING COLUMN 
ALTER TABLE student2
ADD COLUMN age INT NOT NULL DEFAULT 19;

SELECT * FROM student2;

ALTER TABLE student_two
-- Rename table name
RENAME TO student2;


-- modify 
ALTER TABLE student2
MODIFY COLUMN age VARCHAR(2);

-- CHANGE NAME
ALTER TABLE student2
CHANGE age stu_age INT;


INSERT INTO student2
(id, name, marks, grade, stu_age)
VALUES
(56, "ASHISH SHARMA", 80, "A", 100);

-- DROPING FROM THE TABLE 
ALTER TABLE student2
DROP COLUMN sex_ratio;



-- Joins in sql
-- Inner Join in Table 

CREATE TABLE A(
	student_id INT PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO A
(student_id, name)
VALUES
(101, "adam"),
(102, "bob"),
(103, "casey");

CREATE TABLE B(
	student_id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO B
(student_id, course)
VALUES
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

SELECT * FROM A;
SELECT * FROM B;


-- as means we can use a shotcut id 
-- Inner Join
SELECT *
FROM A as aa
INNER JOIN B as bb
ON A.student_id = B.student_id;

-- Left Join
SELECT *
FROM A
LEFT JOIN B
ON A.student_id = B.student_id;

-- Right Join
SELECT *
FROM A 
RIGHT JOIN B
ON A.student_id = B.student_id;

-- Full Join
SELECT *
FROM A
LEFT JOIN B
ON A.student_id = B.student_id

UNION

SELECT *
FROM B
RIGHT JOIN A
ON A.student_id = B.student_id;



