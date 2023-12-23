CREATE DATABASE college;
CREATE DATABASE IF NOT EXISTS college;
USE college;
CREATE TABLE student (
	roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(30)
);
INSERT INTO student
(roll_no, name, marks, grade, city)
VALUES
(72, "Nasir Ali", 70, "B", "Greater Noida"),
(73, "Anurag Chauhan", 85, "A", "Greater Noida"),
(74, "Archil Sachan", 60, "C", "Greater Noida"),
(75, "Aniruddh Mahendra Utteker", 85, "A", "Greater Noida"),
(76, "Satyam Shrivastav", 75, "B", "Anand Vihar"),
(77, "Anurag Verma", 80, "A", "New Delhi");

-- Select distinct col from the table there is no repetation in the table 
SELECT DISTINCT city FROM student;

-- select the provided key from the table and show to you 
SELECT name, grade, marks FROM student;

-- WHERE condition in table to defile some conditions
SELECT * FROM student WHERE marks >= 80;

SELECT * FROM student 
WHERE city = "Greater Noida" AND marks + 10  >= 80;

-- comparision operation 
-- Arthemetic operator ( + , - , / , %, * )
-- comparision operator (= , != , > , >= , < , <= )
-- Bitwise operator ( & , | )     
-- Logical Operator (AND , OR , NOT , IN , BETWEEN, ALL, ANY , LIKE)

 
SELECT * FROM student
WHERE marks != 85; 

SELECT * FROM student 
WHERE marks >= 80 AND city = "Greater Noida";

SELECT * FROM student 
WHERE marks >= 80 OR city = "Ara";

-- Between select between given data like  
SELECT * FROM student 
WHERE marks BETWEEN 60 AND 90;
 
-- IN 
SELECT * FROM student 
WHERE city IN ("Greater Noida", "New Delhi", "Ara", "Patna");

-- NOT IN 
SELECT * FROM student 
WHERE city NOT IN ("Greater Noida", "New Delhi", "Ara", "Patna");

-- LIMIT clause
SELECT * FROM student
WHERE marks = 80
LIMIT 2;

-- ORDER BY CLAUSE
SELECT * FROM student
ORDER BY marks DESC
LIMIT 3;


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
SELECT city, COUNT(roll_no)
FROM student
GROUP BY city;

SELECT * FROM student;