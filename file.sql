Column Name	Data Type	Description
Stud_Rollno	Numeric – Primary Key	Student Roll Number
Stud_ Name	String	Student_ Name
Stud_Dept	String	Student Department
Stud_DOB	Date	Student Date of Birth
Stud_Adds	String	Student_Address

Exercise 1 : Demonstration of Data Definition Language (DDL) Queries
A.	Create the Student relation with the following attributes
B.	Remove the existing attribute address from the student table.
C.	Change the data type of name from VARCHAR(50) to CHAR(15).
D.	Add a new attribute PhoneNo to the Student table.
E.	Rename an existing table Student to Students
F.	Permanently delete the structure of student table

A.	Create the Student relation with the following attributes
CREATE TABLE Student ( Stud_Rollno INT PRIMARY KEY, Stud_Name VARCHAR(50), Stud_Dept VARCHAR(50), Stud_DOB DATE,
Stud_Address VARCHAR(255)
);
B.	Remove the existing attribute address from the student table.
ALTER TABLE Student
DROP COLUMN Stud_Address;


C.	Change the data type of name from VARCHAR(50) to CHAR(15).
ALTER TABLE Student
MODIFY COLUMN Stud_Name CHAR(15);

D.	Add a new attribute PhoneNo to the Student table.



E.	Rename an existing table Student to Students


F.	Permanently delete the structure of student table

 
Column Name	Data Type	Description
Stud_Rollno	Numeric – Primary Key	Student Roll Number
Stud_ Name	String	Student_ Name
Stud_Dept	String	Student Department
Stud_DOB	Date	Student Date of Birth
Stud_Adds	String	Student_Address

Exercise 2 : Demonstration of Data Manipulation Language (DML) Queries
A.	Enter five tuples into the table
B.	Display all the tuples in student table
C.	Display the tuples of student table using WHERE clause.
D.	Update the department of one particular student from student table
E.	Delete all the rows from student table;


CREATE TABLE Student ( Stud_Rollno INT PRIMARY KEY, Stud_Name VARCHAR(100), Stud_Dept VARCHAR(100), Stud_DOB DATE,
Stud_Adds VARCHAR(255)
);
A.	Enter five tuples into the table
INSERT INTO Student VALUES (201, 'Ananya Desai', 'Computer Science', '2003/02/ 14', 'JP Nagar, Bengaluru');
INSERT INTO Student VALUES (202, 'Karan Malhotra', 'Mechanical Engineering', '2002/07/09', 'Andheri West, Mumbai Mumbai');
Enter another three more entires


B.	Display all the tuples in student table SELECT * FROM Student;
C.	Display the tuples of student table using WHERE clause.

SELECT * FROM Student WHERE Stud_Dept = 'Computer Science' ;


D.	Update the department of one particular student from student table. UPDATE Student
SET Stud_Dept = 'Information Technology' WHERE Stud_Rollno = 201;

E.	Delete all the rows from student table; DELETE FROM Student;
To verify the rows got deleted Select * from student;

 
Student Relation

Column Name	Data Type	Description
Stud_Rollno	Numeric – Primary Key	Student Roll Number
Stud_ Name	String	Student_ Name
Stud_Dept	String	Student Department
Stud_DOB	Date	Student Date of Birth
Stud_Adds	String	Student_Address
Marks Relation

Column Name	Data Type	Description
Student_Rollno	Numeric – Forengn Key	Student Roll Number
Marks	Numeric	Student Marks Scored
Course_Id	Alpha Numeric – Primary Key	Student Course ID
CourseName	String	Student Course Name
Percentage	Numeric	Student Percentage

Exercise 3 : Demonstration of Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
A.	Display the total number of students in the student relation.
B.	Display the total marks obtained by all students in Marks table.
C.	Display the average marks of all students in Marks table.
D.	Display the highest marks among all students in Marks table.
E.	Display the lowest marks among all students in Marks table.


Student Relation


CREATE TABLE Student ( Stud_Rollno INT PRIMARY KEY, Stud_Name VARCHAR(100), Stud_Dept VARCHAR(100), Stud_DOB DATE,
Stud_Adds VARCHAR(255)
);


INSERT INTO Student VALUES (201, 'Ananya Desai', 'Computer Science', '2003-02-14', 'JP Nagar, Bengaluru');


INSERT INTO Student VALUES (202, 'Karan Malhotra', 'Mechanical Engineering', '2002-07-09', 'Andheri West, Mumbai');


INSERT INTO Student VALUES (203, 'Meera Joshi', 'Electrical Engineering', '2001-11-22', 'Hazratganj, Lucknow');


INSERT INTO Student VALUES (204, 'Vikram Reddy', 'Civil Engineering', '2002-04-30', 'Banjara Hills, Hyderabad');


INSERT INTO Student VALUES (205, 'Divya Nair', 'Information Technology', '2003-09-17', 'Vyttila, Kochi');

	Select * from Student;


Marks Relation


CREATE TABLE Marks (
Course_Id VARCHAR(20) PRIMARY KEY,
Student_Rollno INT, Marks INT,
CourseName VARCHAR(100), Percentage DECIMAL(5,2),
FOREIGN KEY (Student_Rollno) REFERENCES Student(Stud_Rollno)
);


INSERT INTO Marks VALUES ('CS101', 201, 88, 'Data Structures', 88.00);


INSERT INTO Marks VALUES ('ME201', 202, 76, 'Thermodynamics', 76.00);


INSERT INTO Marks VALUES ('EE301', 203, 91, 'Circuit Theory', 91.00);

INSERT INTO Marks VALUES ('CE401', 204, 82, 'Structural Analysis', 82.00);


INSERT INTO Marks VALUES ('IT501', 205, 95, 'Web Development', 95.00);

Select * from Student;





A.Display the total number of students in the student relation.

SELECT COUNT(*) AS Total_Students FROM Student;

B.Display the total marks obtained by all students in Marks table.
SELECT SUM(Marks) AS Total_Marks FROM Marks;

C.	Display the average marks of all students in Marks table.
SELECT AVG(Marks) AS Average_Marks FROM Marks;

D.	Display the highest marks among all students in Marks table.
SELECT MAX(Marks) AS Highest_Marks FROM Marks;

E.	Display the lowest marks among all students in Marks table.
SELECT MIN(Marks) AS Lowest_Marks FROM Marks;
 
Column Name	Data Type	Description
Stud_Rollno	Numeric – Primary Key	Student Roll Number
Stud_ Name	String	Student_ Name
Stud_Dept	String	Student Department
Stud_DOB	Date	Student Date of Birth
Stud_Adds	String	Student_Address


Column Name	Data Type	Description
Student_Rollno	Numeric – Forengn Key	Student Roll Number
Marks	Numeric	Student Marks Scored
Course_Id	Alpha Numeric – Primary Key	Student Course ID
CourseName	String	Student Course Name
Percentage	Numeric	Student Percentage

Exercise 4: Demonstration of OREDER BY, GROUP BY, HAVING, Between, Like, IN and VIEW concepts
A.	Display the number of students in each department
B.	Find the total marks obtained by students in each department
C.	List departments with more than 3 students.
D.	Find the average percentage of students in each department and sort it in descending order.
E.	List all students who scored marks between 60 and 80.
F.	Display names of students who belong to selected departments
G.	Find students whose names end with 'n'.
Student Relation


CREATE TABLE Student (
Stud_Rollno INT PRIMARY KEY, Stud_Name VARCHAR(100), Stud_Dept VARCHAR(100), Stud_DOB DATE,
Stud_Adds VARCHAR(255)
);

INSERT INTO Student VALUES (201, 'Ananya Desai', 'Computer Science', '2003-02-14', 'JP Nagar, Bengaluru');


INSERT INTO Student VALUES (202, 'Karan Malhotra', 'Mechanical Engineering', '2002-07-09', 'Andheri West, Mumbai');


INSERT INTO Student VALUES (203, 'Meera Joshi', 'Electrical Engineering', '2001-11-22', 'Hazratganj, Lucknow');


INSERT INTO Student VALUES (204, 'Vikram Reddy', 'Civil Engineering', '2002-04-30', 'Banjara Hills, Hyderabad');


INSERT INTO Student VALUES (205, 'Divya Nair', 'Information Technology', '2003-09-17', 'Vyttila, Kochi');


INSERT INTO Student VALUES (206, 'Shruthi Nair' , 'Information Technology', '2002-09-17', ‘Vatakara, Calicut');

INSERT INTO Student VALUES (207, 'Shlok', 'Information Technology', '2002-08-17', 'Vadodara, Vadodara');


INSERT INTO Student VALUES (208, 'Karan', 'Information Technology', '2003-09-17', 'Delhi, Delhi');


	Select * from Student;


Marks Relation


CREATE TABLE Marks (
    Course_Id VARCHAR(20) PRIMARY KEY,
    Student_Rollno INT,
    Marks INT,
    CourseName VARCHAR(100),
    Percentage DECIMAL(5,2),
    FOREIGN KEY (Student_Rollno) REFERENCES Student(Stud_Rollno)
);

INSERT INTO Marks VALUES ('CS1', 201, 88, 'Data Structures', 88.00);


INSERT INTO Marks VALUES ('ME1', 202, 76, 'Thermodynamics', 76.00);


INSERT INTO Marks VALUES ('EE1', 203, 91, 'Circuit Theory', 91.00);


INSERT INTO Marks VALUES ('CE1', 204, 82, 'Structural Analysis', 82.00);


INSERT INTO Marks VALUES ('IT1', 205, 95, 'Web Development', 95.00);


INSERT INTO Marks VALUES ('ME2', 206, 76, 'Thermodynamics', 70.00);


INSERT INTO Marks VALUES ('ME3', 207, 76, 'Thermodynamics', 90.00);

Select * from Student;


A.	Display the number of students in each department
SELECT Stud_Dept, COUNT(*) AS Num_Students FROM student GROUP BY Stud_Dept;

B.	Find the total marks obtained by students in each department
SELECT Stud_Dept, SUM(Marks) AS Total_Marks FROM student
JOIN marks ON student.Stud_Rollno = marks.Student_Rollno GROUP BY Stud_Dept;

C.	List departments with more than 3 students. SELECT Stud_Dept, COUNT(*) AS Num_Students FROM student
GROUP BY Stud_Dept HAVING COUNT(*) > 3;

D.	Find the average percentage of students in each department and sort it in descending order.
SELECT Stud_Dept, AVG(Percentage) AS Avg_Percentage FROM student
JOIN marks ON student.Stud_Rollno = marks.Student_Rollno GROUP BY Stud_Dept
ORDER BY Avg_Percentage DESC;


E.List all students who scored marks between 60 and 80.
SELECT Student_Rollno FROM Marks
WHERE Marks BETWEEN 60 AND 80;
[Displays only the roll number of the student]


SELECT s.Stud_Name, m.Marks FROM student s
JOIN marks m ON s.Stud_Rollno = m.Student_Rollno WHERE m.Marks BETWEEN 60 AND 80;
[Displays the Name of the student]


F.	Display names of students who belong to selected departments
SELECT Stud_Name FROM student
WHERE Stud_Dept IN ('Computer Science', 'Mechanical Engineering', 'Information Technology');


G.	Find students whose names end with 'n'.
SELECT Stud_Name FROM student
WHERE Stud_Name LIKE '%n';
 

