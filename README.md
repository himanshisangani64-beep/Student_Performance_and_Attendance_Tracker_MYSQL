<div align="center">

# 🎓 University Course Management System

### *Interactive MySQL Database, Student Management & Academic Analysis Project*

<br/>

> *"Transform academic data into meaningful insights with SQL."*

</div>

---

## 📋 Table of Contents

* [📌 Overview](#-overview)
* [🎯 Problem Statement](#-problem-statement)
* [✨ Key Features](#-key-features)
* [🏗️ Project Structure](#️-project-structure)
* [🔄 Project Workflow](#-project-workflow)
* [📥 Part A — Database & Data Input](#-part-a--database--data-input)
* [📊 Part B — Academic Data Analysis](#-part-b--academic-data-analysis)
* [🛠️ Tech Stack](#️-tech-stack)
* [📈 Results & Insights](#-results--insights)
* [🔍 Data Quality & Design Notes](#-data-quality--design-notes)
* [🏆 Advantages](#-advantages)
* [🔮 Future Improvements](#-future-improvements)
* [▶️ How to Run](#️-how-to-run)
* [👤 Author](#-author)
* [🙏 Acknowledgements](#-acknowledgements)

---

## 📌 Overview

The **University Course Management System** is a MySQL-based relational database project designed to manage and analyze university academic information such as **departments, courses, instructors, students, and course enrollments**.

The project demonstrates practical SQL concepts including:

* Database and table creation
* Primary and Foreign Keys
* Unique constraints
* CRUD operations
* INNER JOIN and LEFT JOIN
* Subqueries
* Aggregate functions
* `GROUP BY` and `HAVING`
* Date functions
* String functions
* Window functions
* `CASE` expressions
* Running-total analysis
* Relational data modeling

The project is designed to:

* Build a structured university database using MySQL
* Manage departments, courses, instructors and students
* Establish relationships using Primary Keys and Foreign Keys
* Track student course enrollments
* Analyze course popularity and student enrollment
* Retrieve students based on enrollment criteria
* Perform department-wise academic analysis
* Apply date-based student classification
* Use SQL functions for data transformation
* Convert academic data into useful analytical insights

---

## 🎯 Problem Statement

> **Objective:** Build a relational university database and use SQL queries to manage, retrieve, transform and analyze academic data.

The system contains five major entities:

* **Departments**
* **Courses**
* **Instructors**
* **Students**
* **Enrollments**

SQL queries are used to answer practical academic questions related to student enrollment, course popularity, departments, instructors, course credits, date analysis, string transformation and running totals.

| 📂 Feature             | 📄 Type            | 🔍 Description                                     |
| ---------------------- | ------------------ | -------------------------------------------------- |
| Department Management  | Database           | Stores university department information           |
| Course Management      | Academic Data      | Stores courses, credits and departments            |
| Instructor Management  | Faculty Data       | Stores instructor details and departments          |
| Student Management     | Student Data       | Stores student personal and enrollment information |
| Enrollment Management  | Transaction Data   | Connects students with courses                     |
| Course Popularity      | Aggregation        | Identifies courses with high student enrollment    |
| Department Analysis    | JOIN + Aggregation | Counts students enrolled by department             |
| Student Filtering      | WHERE              | Retrieves students based on enrollment year        |
| Subquery Analysis      | Subquery           | Finds students in highly enrolled courses          |
| Date Analysis          | Date Function      | Extracts enrollment year                           |
| String Processing      | String Function    | Creates instructor full names                      |
| Running Total          | Window Function    | Calculates cumulative student enrollments          |
| Student Classification | `CASE`             | Labels students as Senior or Junior                |

The goal is to demonstrate **practical SQL, relational database design and academic data-analysis skills** through a structured university management system.

---

## ✨ Key Features

| Feature                         | Description                                            |
| ------------------------------- | ------------------------------------------------------ |
| 🗄️ **Relational Database**     | Creates a structured university database using MySQL   |
| 🏢 **Department Management**    | Stores 4 university departments                        |
| 📚 **Course Management**        | Stores 25 academic courses                             |
| 👨‍🏫 **Instructor Management** | Stores 20 instructors with department relationships    |
| 🎓 **Student Management**       | Stores 20 student records                              |
| 📝 **Enrollment Management**    | Stores 35 student-course enrollment records            |
| 🔐 **Primary & Foreign Keys**   | Maintains relational integrity                         |
| 🔗 **INNER JOIN**               | Retrieves students and their corresponding courses     |
| 🔗 **LEFT JOIN**                | Retrieves all students and their courses, if available |
| 🧠 **Subquery**                 | Identifies students enrolled in highly popular courses |
| 📊 **GROUP BY + HAVING**        | Finds courses with more than 5 students                |
| 📅 **Date Analysis**            | Extracts enrollment years                              |
| 🔤 **String Operations**        | Concatenates instructor first and last names           |
| 📈 **Running Total**            | Calculates cumulative course enrollments               |
| 🏷️ **CASE Expression**         | Classifies students as Senior or Junior                |
| 🛠️ **CRUD Operations**         | Demonstrates Create, Read, Update and Delete concepts  |

---

## 🏗️ Project Structure

```text
📦 University-Course-Management-System/
│
├── 📄 University_Course_Management_System.sql
│   ├── Database Creation
│   ├── Table Creation
│   ├── Sample Data
│   ├── CRUD Operations
│   └── 15 Academic Analysis Queries
│
├── 📄 README.md
│   └── Project Documentation
│
└── 📁 Screenshots/                 ← Optional
    └── SQL Query Outputs
```

### 🗃️ Database Structure

```text
University_Course_Management_System
│
├── 🏢 Departments
│   ├── DepartmentID (PK)
│   └── DepartmentName
│
├── 📚 Courses
│   ├── CourseID (PK)
│   ├── CourseName
│   ├── DepartmentID (FK)
│   └── Credits
│
├── 👨‍🏫 Instructors
│   ├── InstructorID (PK)
│   ├── FirstName
│   ├── LastName
│   ├── Email (UNIQUE)
│   └── DepartmentID (FK)
│
├── 🎓 Students
│   ├── StudentID (PK)
│   ├── FirstName
│   ├── LastName
│   ├── Email
│   ├── BirthDate
│   └── EnrollmentDate
│
└── 📝 Enrollments
    ├── EnrollmentID (PK)
    ├── StudentID (FK)
    ├── CourseID (FK)
    └── EnrollmentDate
```

### 🔗 Relationships

```text
Departments
    │
    ├─────────────── 1 : N ─────────────── Courses
    │
    └─────────────── 1 : N ─────────────── Instructors


Students
    │
    │ 1
    │
    ▼
Enrollments
    │
    │ N
    ▼
Courses
```

The `Courses.DepartmentID` column references `Departments.DepartmentID`.

The `Instructors.DepartmentID` column references `Departments.DepartmentID`.

The `Enrollments.StudentID` and `Enrollments.EnrollmentDate` columns reference the corresponding student record.

The student relationship uses:

```sql
ON DELETE CASCADE
```

for the composite foreign key.

---

## 🔄 Project Workflow

```text
                    🚀 Project Start
                          │
                          ▼
              ┌────────────────────────┐
              │ Create Database         │
              │ University_Course_...   │
              └───────────┬────────────┘
                          │
                          ▼
              ┌────────────────────────┐
              │ Create 5 Tables         │
              │ Departments             │
              │ Courses                 │
              │ Instructors             │
              │ Students                │
              │ Enrollments             │
              └───────────┬────────────┘
                          │
                          ▼
              ┌────────────────────────┐
              │ Insert Sample Data      │
              │ 4 Departments           │
              │ 25 Courses              │
              │ 20 Instructors          │
              │ 20 Students             │
              │ 35 Enrollments          │
              └───────────┬────────────┘
                          │
                          ▼
              ┌────────────────────────┐
              │ SQL Analysis            │
              │ Academic Queries        │
              └───────────┬────────────┘
                          │
          ┌───────────────┼─────────────────┐
          ▼               ▼                 ▼
       🔗 JOINs       🧠 Subqueries     📊 Aggregation
          │               │                 │
          └───────────────┼─────────────────┘
                          ▼
              ┌────────────────────────┐
              │ Advanced SQL Analysis   │
              │ Window Functions        │
              │ Date Functions          │
              │ String Functions        │
              │ CASE Expressions        │
              └───────────┬────────────┘
                          │
                          ▼
                   💡 Academic Insights
```

---

# 📥 Part A — Database & Data Input

## 📝 1. Database Creation

The project starts by creating and selecting the university database:

```sql
CREATE DATABASE University_Course_Management_System;

USE University_Course_Management_System;
```

---

## 🗂️ 2. Database Tables

Five related tables are created.

| Table             | Records | Main Purpose                   |
| ----------------- | ------: | ------------------------------ |
| 🏢 Departments    |       4 | University departments         |
| 📚 Courses        |      25 | Academic course information    |
| 👨‍🏫 Instructors |      20 | Instructor/faculty information |
| 🎓 Students       |      20 | Student information            |
| 📝 Enrollments    |      35 | Student-course relationships   |

---

## 🏢 3. Departments Table

The `Departments` table contains:

* `DepartmentID` — Primary Key with Auto Increment
* `DepartmentName`

### Departments

```text
1. Computer Science
2. Mathematics
3. Commerce
4. Diploma
```

---

## 📚 4. Courses Table

The `Courses` table stores academic course information:

```text
Courses
├── CourseID
├── CourseName
├── DepartmentID
└── Credits
```

The `DepartmentID` is a Foreign Key connected to the `Departments` table.

Example courses include:

* Introduction to SQL
* Data Structures
* Machine Learning
* Artificial Intelligence
* Data Science
* Statistics
* Linear Algebra
* Cyber Security
* Software Engineering
* Web Development
* Finance
* Accounting
* Business Management

The dataset contains **25 courses**.

---

## 👨‍🏫 5. Instructors Table

The `Instructors` table stores faculty information:

```text
Instructors
├── InstructorID
├── FirstName
├── LastName
├── Email
└── DepartmentID
```

The `Email` field is defined as `UNIQUE` to prevent duplicate instructor email addresses.

The dataset contains **20 instructors**.

---

## 🎓 6. Students Table

The `Students` table stores student information:

```text
Students
├── StudentID
├── FirstName
├── LastName
├── Email
├── BirthDate
└── EnrollmentDate
```

The dataset contains **20 students** with enrollment dates ranging from **2021 to 2026**.

A composite unique constraint is created on:

```sql
UNIQUE(StudentID, EnrollmentDate)
```

This supports the composite foreign-key relationship used by the `Enrollments` table.

---

## 📝 7. Enrollments Table

The `Enrollments` table connects students with courses.

```text
Enrollments
├── EnrollmentID
├── StudentID
├── CourseID
└── EnrollmentDate
```

The dataset contains **35 enrollment records**.

Foreign keys maintain relationships between:

```text
Students  ←── Enrollments ──→ Courses
```

---

# 📊 Part B — Academic Data Analysis

## 🛠️ 1. CRUD Operations

The project demonstrates basic database operations across the tables.

### Create

Data is inserted using:

```sql
INSERT INTO ...
```

### Read

Data is retrieved using:

```sql
SELECT * FROM ...
```

### Update

The database structure supports updating existing records using:

```sql
UPDATE ...
```

### Delete

Records can be removed using:

```sql
DELETE FROM ...
```

The project therefore demonstrates the fundamental CRUD concept used in relational database systems.

---

## 📅 2. Students Enrolled After 2022 — Q2

The project identifies students whose enrollment year is greater than 2022.

```sql
SELECT *
FROM Students
WHERE YEAR(EnrollmentDate) > 2022;
```

### Result

**10 students** were enrolled after 2022.

The result includes students enrolled during:

```text
2023
2024
2025
2026
```

---

## 📚 3. Mathematics Department Courses — Q3

Courses offered by the Mathematics department are retrieved using an `INNER JOIN`.

```sql
SELECT c.CourseID,
       d.DepartmentName,
       c.CourseName
FROM Courses c
INNER JOIN Departments d
ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Mathematics'
LIMIT 5;
```

### Result

The query returns the first five Mathematics courses:

| Course ID | Department  | Course          |
| --------: | ----------- | --------------- |
|       102 | Mathematics | Data Structures |
|       106 | Mathematics | Calculus        |
|       111 | Mathematics | Linear Algebra  |
|       115 | Mathematics | Probability     |
|       117 | Mathematics | Statistics      |

---

## 📊 4. Courses With More Than 5 Students — Q4

`GROUP BY` and `HAVING` are used to identify courses with more than five enrolled students.

```sql
GROUP BY CourseName
HAVING Number_Of_Student > 5;
```

### Result

| Course              | Students |
| ------------------- | -------: |
| Data Structures     |        6 |
| Introduction to SQL |        8 |
| Machine Learning    |       11 |

This shows that **Machine Learning has the highest enrollment in the current dataset with 11 students**.

---

## 🔗 5. Students Enrolled in Both SQL & Data Structures — Q5

The project identifies students enrolled in both:

* Introduction to SQL
* Data Structures

The query uses `GROUP BY` and `HAVING COUNT(DISTINCT CourseID)`.

### Result

**5 students** are enrolled in both courses:

```text
Jane
Arjun
Kavya
Sneha
Akash
```

This demonstrates how SQL can identify students satisfying multiple course conditions.

---

## 🔍 6. Students Enrolled in SQL or Data Structures — Q6

The project retrieves students enrolled in either:

```text
Introduction to SQL
OR
Data Structures
```

### Result

**9 students** are identified.

The query demonstrates filtering with multiple conditions and ordering the resulting student records.

---

## 📊 7. Average Course Credits — Q7

The average number of credits across all courses is calculated using `AVG()`.

```sql
SELECT AVG(Credits)
FROM Courses;
```

### Result

```text
Average Course Credits = 3.2800
```

This provides an overall view of course credit distribution.

---

## 👨‍🏫 8. Computer Science Instructor Count — Q8

The project calculates the number of instructors belonging to the Computer Science department.

```sql
COUNT(*)
```

### Result

```text
Computer Science Instructors = 4
```

This demonstrates combining `JOIN` and aggregate functions for department-level analysis.

---

## 🏢 9. Students Enrolled in Each Department — Q9

Students are counted by the department associated with their enrolled courses.

```sql
COUNT(DISTINCT StudentID)
```

### Result

| Department       | Students |
| ---------------- | -------: |
| Commerce         |        3 |
| Computer Science |       17 |
| Diploma          |        3 |
| Mathematics      |        7 |

This query demonstrates:

* Multiple `INNER JOIN`s
* `COUNT(DISTINCT ...)`
* `GROUP BY`

---

## 🔗 10. INNER JOIN — Students & Courses — Q10

The project retrieves students and their corresponding courses using an `INNER JOIN`.

```sql
SELECT e.StudentID,
       c.CourseID,
       c.CourseName,
       c.DepartmentID,
       c.Credits
FROM Enrollments e
INNER JOIN Courses c
ON e.CourseID = c.CourseID
ORDER BY e.StudentID;
```

### Result

The query returns **35 student-course enrollment relationships**.

This demonstrates how relational tables can be connected through Foreign Keys.

---

## 🔗 11. LEFT JOIN — All Students & Courses — Q11

A `LEFT JOIN` is used to retrieve all students and their corresponding courses, if any.

```sql
SELECT ...
FROM Students s
LEFT JOIN Enrollments e
ON s.StudentID = e.StudentID
LEFT JOIN Courses c
ON e.CourseID = c.CourseID;
```

### Purpose

This approach ensures that **all students are retained in the result**, including students who may not have a matching enrollment.

It demonstrates an important difference between:

```text
INNER JOIN → Matching records
LEFT JOIN  → All records from left table + matches
```

---

## 🧠 12. Subquery — Students in Highly Enrolled Courses — Q12

A subquery identifies courses having more than **10 students**.

```sql
SELECT CourseID,
       COUNT(EnrollmentID) AS Number_Of_Student
FROM Enrollments
GROUP BY CourseID
HAVING Number_Of_Student > 10;
```

The outer query then retrieves students enrolled in those courses.

### Result

The query identifies **11 students** enrolled in:

```text
Machine Learning
```

with:

```text
11 students
```

This demonstrates the use of a subquery with aggregation and joins.

---

## 📅 13. Enrollment Year Extraction — Q13

The `YEAR()` function extracts the enrollment year from `EnrollmentDate`.

```sql
SELECT EnrollmentDate,
       YEAR(EnrollmentDate) AS year_of_Enrollment
FROM Students;
```

### Enrollment Years

The dataset contains student enrollment years from:

```text
2021 → 2026
```

This demonstrates practical date extraction for academic reporting.

---

## 🔤 14. Instructor Full Name — Q14

The `CONCAT()` function combines instructor first and last names.

```sql
SELECT FirstName,
       LastName,
       CONCAT(FirstName, ' ', LastName) AS FullName
FROM Instructors;
```

### Example

```text
Alice Johnson
Bob Lee
Arjun Patel
Meera Shah
Vivek Joshi
```

This demonstrates SQL-based text transformation.

---

## 📈 15. Running Total of Course Enrollments — Q15

A Window Function is used to calculate the cumulative number of students enrolled across courses.

```sql
SUM(Enrollments_Student)
OVER(
    ORDER BY Enrollments_Student
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
)
```

### Result

| Course                         | Enrollments | Running Total |
| ------------------------------ | ----------: | ------------: |
| Accounting                     |           1 |             1 |
| Linear Algebra                 |           1 |             2 |
| Civil Engineering              |           1 |             3 |
| Artificial Intelligence        |           1 |             4 |
| Diploma In IT                  |           2 |             6 |
| Finance                        |           2 |             8 |
| Mobile Application Development |           2 |            10 |
| Data Structures                |           6 |            16 |
| Introduction to SQL            |           8 |            24 |
| Machine Learning               |          11 |            35 |

### Final Running Total

```text
Total Course Enrollments = 35
```

This demonstrates how Window Functions can calculate cumulative values while preserving individual rows.

---

## 🏷️ 16. Student Senior / Junior Classification — Q16

A `CASE` expression is used to classify students based on their enrollment date.

```sql
CASE
    WHEN EnrollmentDate < DATE_SUB(CURDATE(), INTERVAL 4 YEAR)
        THEN 'Senior'
    ELSE 'Junior'
END
```

### Classification Rule

| Condition                          | Status |
| ---------------------------------- | ------ |
| Enrollment more than 4 years ago   | Senior |
| Enrollment within the last 4 years | Junior |

Because the query uses `CURDATE()`, the classification can change automatically as time passes.

---

# 🛠️ Tech Stack

| Tool / Concept             | Purpose                                    |
| -------------------------- | ------------------------------------------ |
| 🐬 **MySQL 8.0**           | Relational database management             |
| 💻 **SQL**                 | Data management and analysis               |
| 🔐 **Primary Keys**        | Unique record identification               |
| 🔗 **Foreign Keys**        | Maintaining table relationships            |
| 🧩 **Constraints**         | Data integrity                             |
| 🔗 **INNER JOIN**          | Matching relational data                   |
| 🔗 **LEFT JOIN**           | Retrieving all records from the left table |
| 📊 **Aggregate Functions** | `AVG`, `COUNT`, `SUM`                      |
| 📋 **GROUP BY**            | Group-based analysis                       |
| 🔎 **HAVING**              | Filtering grouped results                  |
| 🧠 **Subqueries**          | Nested analytical queries                  |
| 📅 **Date Functions**      | `YEAR`, `CURDATE`, `DATE_SUB`              |
| 🔤 **String Functions**    | `CONCAT`                                   |
| 📈 **Window Functions**    | Running-total analysis                     |
| 🏷️ **CASE**               | Conditional classification                 |

---

# 📈 Results & Insights

After executing the SQL analysis, the project produces the following key results.

### 🎓 Student Insights

* 👤 **20 total students**
* 📅 Enrollment years range from **2021 to 2026**
* 🎓 **10 students** enrolled after 2022
* 🔗 Student-course relationships analyzed through enrollments

### 📚 Course Insights

* 📚 **25 total courses**
* 📊 **Average course credits = 3.28**
* 🏆 **Machine Learning has 11 enrollments**
* 📈 **Introduction to SQL has 8 enrollments**
* 📊 **Data Structures has 6 enrollments**
* 🔎 Three courses have more than 5 students

### 🏢 Department Insights

| Department       | Students Enrolled |
| ---------------- | ----------------: |
| Computer Science |                17 |
| Mathematics      |                 7 |
| Commerce         |                 3 |
| Diploma          |                 3 |

### 👨‍🏫 Instructor Insights

* 👨‍🏫 **20 instructors**
* 💻 **4 instructors** belong to Computer Science
* 🔗 Instructor records are connected with departments using Foreign Keys

### 📈 Advanced SQL Insights

* Total enrollment relationships = **35**
* Running total reaches **35**
* Subquery identifies **Machine Learning** as a course with more than 10 enrollments
* `CASE` dynamically classifies students based on enrollment age

---

# 🔍 Data Quality & Design Notes

The project demonstrates several important database-design considerations:

* `DepartmentID` is used as a Foreign Key in both Courses and Instructors.
* `Email` in the Instructors table is defined as `UNIQUE`.
* Students use a composite unique constraint on `(StudentID, EnrollmentDate)`.
* The Enrollments table uses a composite Foreign Key for StudentID and EnrollmentDate.
* `ON DELETE CASCADE` is used for the student relationship in Enrollments.
* Course enrollment analysis uses `COUNT(DISTINCT StudentID)` where unique student counting is required.
* Q16 uses `CURDATE()`, so Senior/Junior classification changes automatically according to the current date.
* The dataset contains enrollment records across multiple academic years, making it suitable for date-based analysis.

### ⚠️ Important Referential-Integrity Observation

The current `Enrollments` data references course IDs such as:

```text
125
```

while the course insertion shown creates course IDs up to:

```text
125
```

Therefore, the SQL file should be executed in the intended sequence so that all referenced course records exist before enrollment records are inserted.

---

# 🏆 Advantages

| Advantage                      | Detail                                                     |
| ------------------------------ | ---------------------------------------------------------- |
| 🎓 **Academic Use Case**       | Represents a realistic university database                 |
| 🗄️ **Relational Design**      | Uses multiple connected tables                             |
| 🔐 **Data Integrity**          | Uses Primary Keys, Foreign Keys and constraints            |
| 🔗 **JOIN Practice**           | Demonstrates INNER and LEFT JOIN                           |
| 🧠 **Analytical SQL**          | Uses subqueries and aggregate functions                    |
| 📊 **Business-style Analysis** | Applies grouping and filtering                             |
| 📅 **Date Analysis**           | Extracts enrollment years and calculates time-based status |
| 🔤 **Data Transformation**     | Uses string functions                                      |
| 📈 **Advanced SQL**            | Uses Window Functions                                      |
| 🏷️ **Conditional Logic**      | Uses CASE expressions                                      |
| 📚 **Portfolio Ready**         | Demonstrates practical SQL skills                          |
| 🚀 **Extensible**              | Can be expanded with CTEs, views and dashboards            |

---

# 🔮 Future Improvements

Possible extensions for the project:

* [ ] Add `UPDATE` and `DELETE` examples for every table
* [ ] Add `RIGHT JOIN` and Full Outer Join simulation
* [ ] Add Common Table Expressions (**CTEs**)
* [ ] Add `ROW_NUMBER()` and `DENSE_RANK()`
* [ ] Add advanced Window Functions
* [ ] Create SQL Views for academic reports
* [ ] Add indexes and analyze execution plans
* [ ] Add stored procedures
* [ ] Add student GPA calculation
* [ ] Add semester-wise enrollment analysis
* [ ] Add department-wise course analysis
* [ ] Add instructor course assignments
* [ ] Add student performance/grades tables
* [ ] Connect MySQL with **Power BI**
* [ ] Build an interactive University Analytics Dashboard

---

# ▶️ How to Run

## 1️⃣ Create the Database

Open **MySQL Command Line** and run:

```sql
CREATE DATABASE University_Course_Management_System;
```

## 2️⃣ Select the Database

```sql
USE University_Course_Management_System;
```

## 3️⃣ Run the SQL File

From the terminal:

```bash
mysql -u root -p < University_Course_Management_System.sql
```

Enter your MySQL password when prompted.

## 4️⃣ Verify the Database

```sql
SHOW TABLES;
```

Expected tables:

```text
Courses
Departments
Enrollments
Instructors
Students
```

## 5️⃣ Execute the Analysis Queries

Run the SQL analysis queries from the SQL file to reproduce the academic analysis and outputs.

---

# 👤 Author

<div align="center">

### **Himanshi Sangani**

🎓 **Bachelor of Computer Application**

> *"Learning SQL today, building data-driven solutions tomorrow."*

</div>

---

# 🙏 Acknowledgements

Special thanks to the learning resources and communities that support SQL and data-analysis learning:

* 📚 **MySQL Documentation** — SQL syntax and database reference
* 💻 **SQL Learning Platforms** — Query practice and problem solving
* 📖 **Data Analytics Communities** — Practical SQL concepts and examples
* 🧪 **Hands-on Practice** — Realistic academic datasets and SQL exercises

---
