# Exercise 5 : Demonstration of Key Constraints and String Functions
## A.	Write a query to create the Student table with Stud_Rollno as the Primary Key.
## B.	Create the Marks table with Stud_Rollno as a Foreign Key referencing Student(Stud_Rollno).
## C.	Insert 5 tuples into the Student table ensuring no duplicate roll numbers.
## D.	Display all student names in uppercase.
## E.	Display all student names in lowercase.
## F.	Show student names and their lengths.

### A. Write a query to create the Student table with Stud_Rollno as the Primary Key.

```sql
CREATE TABLE Student (
    Stud_Rollno INT PRIMARY KEY,
    Stud_Name VARCHAR(100),
    Stud_Dept VARCHAR(100),
    Stud_DOB DATE,
    Stud_Adds VARCHAR(255)
);
```

### B. Create the Marks table with Stud_Rollno as a Foreign Key referencing Student(Stud_Rollno).

```sql
CREATE TABLE Marks (
    Course_Id VARCHAR(20) PRIMARY KEY,
    Student_Rollno INT,
    Marks INT,
    CourseName VARCHAR(100),
    Percentage DECIMAL(5,2),
    FOREIGN KEY (Student_Rollno) REFERENCES Student(Stud_Rollno)
);
```

### C. Insert 5 tuples into the Student table ensuring no duplicate roll numbers.

```sql
INSERT INTO Student VALUES (201, 'Ananya Desai', 'Computer Science', '2003-02-14', 'JP Nagar, Bengaluru');
INSERT INTO Student VALUES (202, 'Karan Malhotra', 'Mechanical Engineering', '2002-07-09', 'Andheri West, Mumbai');
INSERT INTO Student VALUES (203, 'Meera Joshi', 'Electrical Engineering', '2001-11-22', 'Hazratganj, Lucknow');
INSERT INTO Student VALUES (204, 'Vikram Reddy', 'Civil Engineering', '2002-04-30', 'Banjara Hills, Hyderabad');
INSERT INTO Student VALUES (205, 'Divya Nair', 'Information Technology', '2003-09-17', 'Vyttila, Kochi');
INSERT INTO Student VALUES (206, 'Shruthi Nair', 'Information Technology', '2002-09-17', 'Vatakara, Calicut');
INSERT INTO Student VALUES (207, 'Shlok', 'Information Technology', '2002-08-17', 'Vadodara, Vadodara');
INSERT INTO Student VALUES (208, 'Karan', 'Information Technology', '2003-09-17', 'Delhi, Delhi');
```


### D. Display all student names in uppercase.

```sql
SELECT UPPER(Stud_Name) as UPPERCASE FROM STUDENT;
```

### E. Display all student names in lowercase.

```sql
SELECT LOWER(Stud_Name) as LOWERCASE FROM STUDENT;
```

### F. Show student names and their lengths.

```sql
SELECT Stud_Name, LENGTH(Stud_Name) AS Name_Length FROM Student;
```
