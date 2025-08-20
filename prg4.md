Exercise 4: Demonstration of OREDER BY, GROUP BY, HAVING, Between, Like, IN and VIEW concepts
A.	Display the number of students in each department
B.	Find the total marks obtained by students in each department
C.	List departments with more than 3 students.
D.	Find the average percentage of students in each department and sort it in descending order.
E.	List all students who scored marks between 60 and 80.
F.	Display names of students who belong to selected departments
G.	Find students whose names end with 'n'.
Student Relation

```
CREATE TABLE Student (
Stud_Rollno INT PRIMARY KEY, Stud_Name VARCHAR(100), Stud_Dept VARCHAR(100), Stud_DOB DATE,
Stud_Adds VARCHAR(255)
);
```

```
INSERT INTO Student VALUES (201, 'Ananya Desai', 'Computer Science', '2003-02-14', 'JP Nagar, Bengaluru');
```
```
INSERT INTO Student VALUES (202, 'Karan Malhotra', 'Mechanical Engineering', '2002-07-09', 'Andheri West, Mumbai');
```
```
INSERT INTO Student VALUES (203, 'Meera Joshi', 'Electrical Engineering', '2001-11-22', 'Hazratganj, Lucknow');
```
```
INSERT INTO Student VALUES (204, 'Vikram Reddy', 'Civil Engineering', '2002-04-30', 'Banjara Hills, Hyderabad');
```
```
INSERT INTO Student VALUES (205, 'Divya Nair', 'Information Technology', '2003-09-17', 'Vyttila, Kochi');
```
```
INSERT INTO Student VALUES (206, 'Shruthi Nair' , 'Information Technology', '2002-09-17', ‘Vatakara, Calicut');
```
```
INSERT INTO Student VALUES (207, 'Shlok', 'Information Technology', '2002-08-17', 'Vadodara, Vadodara');
```
```
INSERT INTO Student VALUES (208, 'Karan', 'Information Technology', '2003-09-17', 'Delhi, Delhi');
```
```
Select * from Student;
```

Marks Relation

```
CREATE TABLE Marks (
    Course_Id VARCHAR(20) PRIMARY KEY,
    Student_Rollno INT,
    Marks INT,
    CourseName VARCHAR(100),
    Percentage DECIMAL(5,2),
    FOREIGN KEY (Student_Rollno) REFERENCES Student(Stud_Rollno)
);
```
```
INSERT INTO Marks VALUES ('CS1', 201, 88, 'Data Structures', 88.00);
```
```
INSERT INTO Marks VALUES ('ME1', 202, 76, 'Thermodynamics', 76.00);
```
```
INSERT INTO Marks VALUES ('EE1', 203, 91, 'Circuit Theory', 91.00);
```
```
INSERT INTO Marks VALUES ('CE1', 204, 82, 'Structural Analysis', 82.00);
```
```
INSERT INTO Marks VALUES ('IT1', 205, 95, 'Web Development', 95.00);
```
```
INSERT INTO Marks VALUES ('ME2', 206, 76, 'Thermodynamics', 70.00);
```
```
INSERT INTO Marks VALUES ('ME3', 207, 76, 'Thermodynamics', 90.00);
```
```
Select * from Student;
```

A.	Display the number of students in each department
```
SELECT Stud_Dept, COUNT(*) AS Num_Students FROM student GROUP BY Stud_Dept;
```


B.	Find the total marks obtained by students in each department


```
SELECT Stud_Dept, SUM(Marks) AS Total_Marks FROM student
```
```
JOIN marks ON student.Stud_Rollno = marks.Student_Rollno GROUP BY Stud_Dept;
```


C.	List departments with more than 3 students. SELECT Stud_Dept, COUNT(*) AS Num_Students FROM student


```
GROUP BY Stud_Dept HAVING COUNT(*) > 3;
```
D.	Find the average percentage of students in each department and sort it in descending order.
```
SELECT Stud_Dept, AVG(Percentage) AS Avg_Percentage FROM student
```

```
JOIN marks ON student.Stud_Rollno = marks.Student_Rollno GROUP BY Stud_Dept
```

```
ORDER BY Avg_Percentage DESC;
```



E.List all students who scored marks between 60 and 80.
```
SELECT Student_Rollno FROM Marks
```

```
WHERE Marks BETWEEN 60 AND 80;
```

[Displays only the roll number of the student]

```
SELECT s.Stud_Name, m.Marks FROM student s
```

```
JOIN marks m ON s.Stud_Rollno = m.Student_Rollno WHERE m.Marks BETWEEN 60 AND 80;
```

[Displays the Name of the student]


F.	Display names of students who belong to selected departments
```
SELECT Stud_Name FROM student
```
```
WHERE Stud_Dept IN ('Computer Science', 'Mechanical Engineering', 'Information Technology');
```


G.	Find students whose names end with 'n'.
```
SELECT Stud_Name FROM student
```
```
WHERE Stud_Name LIKE '%n';
```
 
