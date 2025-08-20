# Exercise 3: Demonstration of Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)

## Student Relation

**Table Definition:**

| Column Name | Data Type     | Description           |
|-------------|---------------|-----------------------|
| Stud_Rollno | Numeric – Primary Key | Student Roll Number   |
| Stud_Name   | String        | Student_Name          |
| Stud_Dept   | String        | Student Department    |
| Stud_DOB    | Date          | Student Date of Birth |
| Stud_Adds   | String        | Student_Address       |

**SQL Commands:**

```sql
CREATE TABLE Student (
    Stud_Rollno INT PRIMARY KEY,
    Stud_Name VARCHAR(100),
    Stud_Dept VARCHAR(100),
    Stud_DOB DATE,
    Stud_Adds VARCHAR(255)
);

INSERT INTO Student VALUES (201, 'Ananya Desai', 'Computer Science', '2003-02-14', 'JP Nagar, Bengaluru');
INSERT INTO Student VALUES (202, 'Karan Malhotra', 'Mechanical Engineering', '2002-07-09', 'Andheri West, Mumbai');
INSERT INTO Student VALUES (203, 'Meera Joshi', 'Electrical Engineering', '2001-11-22', 'Hazratganj, Lucknow');
INSERT INTO Student VALUES (204, 'Vikram Reddy', 'Civil Engineering', '2002-04-30', 'Banjara Hills, Hyderabad');
INSERT INTO Student VALUES (205, 'Divya Nair', 'Information Technology', '2003-09-17', 'Vyttila, Kochi');

SELECT * FROM Student;
