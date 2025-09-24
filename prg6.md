
Exercise 6 : Demonstration of JOINS (INNER JOIN, OUTER JOIN) and
ARITHMETIC, LOGICAL and RELATIONAL operators
A. Display student name, department, and their subject-wise marks.( INNER JOIN)
B. List all students and their marks (if any), including students without marks.( LEFT
JOIN)
C. Show all subject-wise marks and the student names (include marks without matching
students). (RIGHT JOIN)
D. List all marks entries along with student names. (FULL OUTER JOIN)
E. Display students who got exactly 90 marks.
F. Find students who scored between 50 and 80

CREATE TABLE Student (
 Stud_Rollno INT PRIMARY KEY,
 Stud_Name VARCHAR(100),
 Stud_Dept VARCHAR(100),
 Stud_DOB DATE,
 Stud_Adds VARCHAR(255)
);
INSERT INTO Student
VALUES (201, 'Ananya Desai', 'Computer Science', '2003-02-14', 'JP Nagar, Bengaluru');
INSERT INTO Student
VALUES (202, 'Karan Malhotra', 'Mechanical Engineering', '2002-07-09', 'Andheri West, Mumbai');
INSERT INTO Student
VALUES (203, 'Meera Joshi', 'Electrical Engineering', '2001-11-22', 'Hazratganj, Lucknow');
INSERT INTO Student
VALUES (204, 'Vikram Reddy', 'Civil Engineering', '2002-04-30', 'Banjara Hills, Hyderabad');
INSERT INTO Student
VALUES (205, 'Divya Nair', 'Information Technology', '2003-09-17', 'Vyttila, Kochi');
INSERT INTO Student VALUES (206, 'Dia', 'Information Technology', '2001-09-17', 'Kochi');
INSERT INTO Student VALUES (207, 'SAM', 'Computer Science', '2001-09-17', 'Delhi');


CREATE TABLE Marks (
 Course_Id VARCHAR(20) PRIMARY KEY,
 Student_Rollno INT,
 Marks INT,
 CourseName VARCHAR(100),
 Percentage DECIMAL(5,2),
 FOREIGN KEY (Student_Rollno) REFERENCES Student(Stud_Rollno)
);
INSERT INTO Marks
VALUES ('CS101', 201, 68, 'Data Structures', 68.00);
INSERT INTO Marks
VALUES ('ME201', 202, 76, 'Thermodynamics', 76.00);
INSERT INTO Marks
VALUES ('EE301', 203, 90, 'Circuit Theory', 90.00);
INSERT INTO Marks
VALUES ('CE401', 204, 82, 'Structural Analysis', 82.00);
INSERT INTO Marks
VALUES ('CE401', 208, 50, 'Structural Analysis', 50.00);
INSERT INTO Marks
VALUES ('IT501', 205, 55, 'Web Development', 55.00);

A. Display student name, department, and their marks (INNER JOIN)
Query:
SELECT Student.Stud_Name, Student.Stud_Dept, Marks.Marks
FROM Student
INNER JOIN Marks
ON Student.Stud_Rollno = Marks.Student_Rollno;

B. List all students and their marks (if any) using LEFT JOIN
Query:
SELECT Student.Stud_Name, Marks.Marks
FROM Student
LEFT JOIN Marks
ON Student.Stud_Rollno = Marks.Student_Rollno;



C. Show all marks and student names (include marks without matching students) using RIGHT JOIN
Query:
SELECT Student.Stud_Name, Marks.Marks
FROM Student
RIGHT JOIN Marks
ON Student.Stud_Rollno = Marks.Student_Rollno;

D. List all marks entries along with student names using FULL OUTER JOIN (MySQL workaround)
[MySQL doesn’t support FULL OUTER join directly, hence we have to find out the UNION of left
and right outer joins]
Query:
SELECT Student.Stud_Name, Marks.Marks
FROM Student
LEFT JOIN Marks
ON Student.Stud_Rollno = Marks.Student_Rollno

UNION

SELECT Student.Stud_Name, Marks.Marks
FROM Student
RIGHT JOIN Marks
ON Student.Stud_Rollno = Marks.Student_Rollno;

E. Display students who got exactly 90 marks
Query:
SELECT Student.Stud_Name, Marks.Marks
FROM Student
INNER JOIN Marks
ON Student.Stud_Rollno = Marks.Student_Rollno
WHERE Marks.Marks = 90;

F. Find students who scored between 50 and 80
Query:
SELECT Student.Stud_Name, Marks.Marks
FROM Student
INNER JOIN Marks
ON Student.Stud_Rollno = Marks.Student_Rollno
WHERE Marks.Marks BETWEEN 50 AND 80;

