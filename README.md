# 🎓 Student Performance and Attendance Tracker

### *Interactive MySQL Database, Student Management, Attendance Tracking & Academic Performance Analysis Project*

> *"Transform student data into meaningful academic insights with SQL."*

---

## 📋 Table of Contents

* [📌 Overview](#-overview)
* [🎯 Problem Statement](#-problem-statement)
* [✨ Key Features](#-key-features)
* [🏗️ Project Structure](#️-project-structure)
* [🗃️ Database Structure](#️-database-structure)
* [🔗 Relationships](#-relationships)
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

The **Student Performance and Attendance Tracker** is a MySQL-based relational database project designed to manage and analyze student academic information, including:

* Student details
* Departments
* Faculty
* Courses
* Course enrollments
* Attendance records
* Academic grades

The project demonstrates practical SQL concepts including:

* Database and table creation
* Primary Keys and Foreign Keys
* Referential integrity
* `ON DELETE CASCADE`
* CRUD operations
* `INNER JOIN`
* `LEFT JOIN`
* Subqueries
* Aggregate functions
* `GROUP BY` and `HAVING`
* Date functions
* String functions
* `CASE` expressions
* Window functions
* `DENSE_RANK()`
* Running-total analysis
* Attendance percentage calculation
* Student performance classification
* Attendance classification

The project is designed to:

* Build a structured student management database using MySQL
* Maintain department, student, faculty and course information
* Track student course enrollments
* Record student attendance
* Store academic marks and grades
* Identify students with low attendance
* Analyze student performance
* Calculate attendance percentages
* Rank students based on marks
* Categorize students according to attendance
* Classify academic performance using `CASE`
* Perform department-wise and course-wise analysis
* Apply date and string functions
* Generate meaningful academic insights using SQL

---

## 🎯 Problem Statement

> **Objective:** Build a relational database system for managing student academic information and use SQL queries to analyze attendance, enrollment, grades, faculty, courses and student performance.

The system contains seven major entities:

* **Departments**
* **Students**
* **Faculty**
* **Courses**
* **Enrollments**
* **Attendance**
* **Grades**

SQL queries are used to answer practical academic questions related to:

* Student enrollment
* Department distribution
* Course enrollment
* Faculty assignments
* Attendance performance
* Grade analysis
* Student ranking
* Course-wise marks
* Academic performance
* Attendance categories
* Date-based analysis
* String transformation

### 📊 Major Functional Areas

| **Feature**                | **Type**         | **Description**                                             |
| -------------------------- | ---------------- | ----------------------------------------------------------- |
| Department Management      | Database         | Stores academic department information                      |
| Student Management         | Student Data     | Stores student personal and academic information            |
| Faculty Management         | Faculty Data     | Stores faculty information and department relationships     |
| Course Management          | Academic Data    | Stores courses and assigned faculty                         |
| Enrollment Management      | Transaction Data | Connects students with courses                              |
| Attendance Tracking        | Attendance Data  | Stores Present, Absent and Late attendance                  |
| Grade Management           | Academic Data    | Stores marks and grades                                     |
| Attendance Analysis        | Aggregation      | Calculates student attendance percentages                   |
| Low Attendance Detection   | Filtering        | Identifies students below attendance thresholds             |
| Course Performance         | Aggregation      | Calculates average marks by course                          |
| Student Ranking            | Window Function  | Ranks students using `DENSE_RANK()`                         |
| Performance Classification | `CASE`           | Classifies students as Excellent, Good or Needs Improvement |
| Attendance Classification  | `CASE`           | Classifies students as Regular, Irregular or Defaulter      |
| Date Analysis              | Date Functions   | Extracts months, years and calculates date differences      |
| String Processing          | String Functions | Performs text transformation and formatting                 |
| Running Total              | Window Function  | Calculates cumulative enrollment information                |

The goal is to demonstrate **practical SQL, relational database design, data integrity and academic data-analysis skills** through a structured student management system.

---

## ✨ Key Features

| **Feature**                   | **Description**                                               |
| ----------------------------- | ------------------------------------------------------------- |
| 🗄️ **Relational Database**   | Creates a structured academic database using MySQL            |
| 🏢 **Department Management**  | Stores 5 academic departments                                 |
| 🎓 **Student Management**     | Stores student personal and academic information              |
| 👨‍🏫 **Faculty Management**  | Stores 25 faculty records                                     |
| 📚 **Course Management**      | Stores 25 academic courses                                    |
| 📝 **Enrollment Management**  | Tracks student-course relationships                           |
| 📅 **Attendance Tracking**    | Records Present, Absent and Late status                       |
| 📊 **Grade Tracking**         | Stores student marks and grades                               |
| 🔐 **Primary & Foreign Keys** | Maintains relational integrity                                |
| 🔗 **INNER JOIN**             | Combines related academic records                             |
| 🔗 **LEFT JOIN**              | Identifies records with and without matching data             |
| 🧠 **Subqueries**             | Performs nested academic analysis                             |
| 📊 **GROUP BY + HAVING**      | Performs grouped analysis and filtering                       |
| 📈 **Aggregate Functions**    | Uses `AVG`, `COUNT`, `SUM` and other functions                |
| 📅 **Date Analysis**          | Uses `YEAR`, `MONTH`, `DATEDIFF`, `CURDATE` and `DATE_FORMAT` |
| 🔤 **String Functions**       | Uses `CONCAT`, `UPPER`, `LOWER`, `TRIM` and `REPLACE`         |
| 📈 **Window Functions**       | Uses `SUM() OVER()` and `DENSE_RANK()`                        |
| 🏷️ **CASE Expression**       | Classifies student performance and attendance                 |
| 🗑️ **ON DELETE CASCADE**     | Maintains dependent student records                           |
| 📊 **Academic Insights**      | Converts database records into meaningful results             |

---

# 🏗️ Project Structure

```text
📦 Student-Performance-and-Attendance-Tracker/
│
├── 📄 Student_Performance_and_Attendance_Tracker.sql
│   ├── Database Creation
│   ├── Table Creation
│   ├── Sample Data
│   ├── CRUD Operations
│   ├── Attendance Analysis
│   ├── Grade Analysis
│   ├── JOIN Queries
│   ├── Subqueries
│   ├── Date Functions
│   ├── String Functions
│   ├── Window Functions
│   └── 33 SQL Analysis Queries
│
├── 📄 README.md
│   └── Project Documentation

```

---

# 🗃️ Database Structure

```text
Student_Performance_andAttendance_Tracker
│
├── 🏢 Departments
│   ├── department_id (PK)
│   └── department_name
│
├── 🎓 Students
│   ├── Student_id (PK)
│   ├── name
│   ├── dob
│   ├── gender
│   ├── email
│   ├── phone_number
│   ├── address
│   ├── addmission_date
│   └── department_id (FK)
│
├── 👨‍🏫 Faculty
│   ├── faculty_id (PK)
│   ├── name
│   ├── email
│   ├── phone_number
│   └── department_id (FK)
│
├── 📚 Courses
│   ├── course_id (PK)
│   ├── course_name
│   └── faculty_id (FK)
│
├── 📝 Enrollments
│   ├── enrollment_id (PK)
│   ├── Student_id (FK)
│   ├── course_id (FK)
│   └── enrollment_date
│
├── 📅 Attendance
│   ├── attendance_id (PK)
│   ├── Student_id (FK)
│   ├── course_id (FK)
│   ├── attendance_date
│   └── status
│
└── 📊 Grades
    ├── grade_id (PK)
    ├── Student_id (FK)
    ├── course_id (FK)
    ├── marks_obtained
    └── grade
```

---

# 🔗 Relationships

```text
Departments
    │
    ├────────────── 1 : N ────────────── Students
    │
    └────────────── 1 : N ────────────── Faculty
                                             │
                                             │ 1 : N
                                             ▼
                                         Courses
                                             │
                              ┌──────────────┼──────────────┐
                              │              │              │
                              ▼              ▼              ▼
                         Enrollments     Attendance       Grades
                              │              │              │
                              └──────────────┼──────────────┘
                                             │
                                             ▼
                                          Students
```

### 🔑 Foreign Key Relationships

The `Students.department_id` column references:

```text
Departments.department_id
```

The `Faculty.department_id` column references:

```text
Departments.department_id
```

The `Courses.faculty_id` column references:

```text
Faculty.faculty_id
```

The following tables reference students:

```text
Enrollments.Student_id
Attendance.Student_id
Grades.Student_id
```

These student relationships use:

```sql
ON DELETE CASCADE
```

This means dependent enrollment, attendance and grade records can be automatically removed when the related student record is deleted.

---

# 🔄 Project Workflow

```text
                         🚀 Project Start
                               │
                               ▼
                  ┌─────────────────────────┐
                  │ Create Database          │
                  │ Student_Performance_...  │
                  └────────────┬────────────┘
                               │
                               ▼
                  ┌─────────────────────────┐
                  │ Create 7 Tables          │
                  │ Departments              │
                  │ Students                 │
                  │ Faculty                  │
                  │ Courses                  │
                  │ Enrollments              │
                  │ Attendance               │
                  │ Grades                   │
                  └────────────┬────────────┘
                               │
                               ▼
                  ┌─────────────────────────┐
                  │ Insert Sample Data       │
                  │ Departments              │
                  │ Students                 │
                  │ Faculty                  │
                  │ Courses                  │
                  │ Enrollments              │
                  │ Attendance               │
                  │ Grades                   │
                  └────────────┬────────────┘
                               │
                               ▼
                     📊 SQL Analysis
                               │
          ┌────────────────────┼────────────────────┐
          ▼                    ▼                    ▼
       🔗 JOINs            🧠 Subqueries       📊 Aggregation
          │                    │                    │
          └────────────────────┼────────────────────┘
                               ▼
                  ┌─────────────────────────┐
                  │ Advanced SQL Analysis    │
                  │ Window Functions         │
                  │ Date Functions           │
                  │ String Functions         │
                  │ CASE Expressions         │
                  └────────────┬────────────┘
                               │
                               ▼
                     💡 Academic Insights
```

---

# 📥 Part A — Database & Data Input

## 📝 1. Database Creation

The project starts by creating and selecting the academic database:

```sql
CREATE DATABASE Student_Performance_andAttendance_Tracker;

USE Student_Performance_andAttendance_Tracker;
```

---

## 🗂️ 2. Database Tables

Seven related tables are created.

| **Table**      |       **Records** | **Main Purpose**                    |
| -------------- | ----------------: | ----------------------------------- |
| 🏢 Departments |                 5 | Stores department information       |
| 🎓 Students    | 32 after deletion | Stores student information          |
| 👨‍🏫 Faculty  |                25 | Stores faculty information          |
| 📚 Courses     |                25 | Stores course information           |
| 📝 Enrollments |                38 | Stores student-course relationships |
| 📅 Attendance  |                60 | Stores attendance records           |
| 📊 Grades      |                30 | Stores academic marks and grades    |

> **Note:** The SQL file initially inserts 35 students and later removes 3 records using a `DELETE` query. Therefore, subsequent analysis operates on **32 remaining students**.

---

## 🏢 3. Departments Table

The `Departments` table stores academic department information.

```text
Departments
├── department_id
└── department_name
```

### Departments

```text
1. Computer Science
2. Commerce
3. Diploma
4. Information Technology
5. Business Administration
```

The table uses:

```sql
department_id INT PRIMARY KEY
```

to uniquely identify each department.

---

## 🎓 4. Students Table

The `Students` table stores student information.

```text
Students
├── Student_id
├── name
├── dob
├── gender
├── email
├── phone_number
├── address
├── addmission_date
└── department_id
```

The `Student_id` column is the Primary Key.

The `department_id` column connects students with their departments.

The project initially contains **35 students**.

After the deletion operation, **32 students remain** for subsequent analysis.

---

## 👨‍🏫 5. Faculty Table

The `Faculty` table stores faculty information.

```text
Faculty
├── faculty_id
├── name
├── email
├── phone_number
└── department_id
```

The dataset contains:

```text
25 Faculty Records
```

Faculty members are associated with departments using a Foreign Key.

---

## 📚 6. Courses Table

The `Courses` table stores academic course information.

```text
Courses
├── course_id
├── course_name
└── faculty_id
```

The `faculty_id` column references:

```text
Faculty.faculty_id
```

The dataset contains:

```text
25 Courses
```

Example courses include:

* Python
* Data Structures
* Database Systems
* Computer Architecture
* Operating Systems
* Financial Accounting
* Business Economics
* Business Law
* Engineering Drawing
* Basic Electronics
* Computer Networks
* Cyber Security
* Cloud Computing
* Software Engineering
* Web Technology
* Web Development
* Principles of Management
* Marketing Management
* Human Resource Management
* Business Communication
* Entrepreneurship

---

## 📝 7. Enrollments Table

The `Enrollments` table connects students with courses.

```text
Enrollments
├── enrollment_id
├── Student_id
├── course_id
└── enrollment_date
```

The dataset contains:

```text
38 Enrollment Records
```

The table establishes the relationship:

```text
Students  ←── Enrollments ──→ Courses
```

---

## 📅 8. Attendance Table

The `Attendance` table records student attendance.

```text
Attendance
├── attendance_id
├── Student_id
├── course_id
├── attendance_date
└── status
```

The dataset contains:

```text
60 Attendance Records
```

### Attendance Status

The project uses three attendance statuses:

```text
Present
Absent
Late
```

Attendance values are interpreted as:

| **Status** | **Value** |
| ---------- | --------: |
| Present    |         1 |
| Late       |       0.5 |
| Absent     |         0 |

### Attendance Formula

Attendance percentage is calculated using the equivalent attendance value:

```text
Attendance % =
(SUM(Present + Late × 0.5) / Total Attendance Records) × 100
```

This allows late attendance to contribute partially toward attendance percentage.

---

## 📊 9. Grades Table

The `Grades` table stores academic performance.

```text
Grades
├── grade_id
├── Student_id
├── course_id
├── marks_obtained
└── grade
```

The dataset contains:

```text
30 Grade Records
```

The marks are used for:

* Average marks analysis
* Highest and lowest marks
* Student ranking
* Performance classification
* Comparison with overall average

---

# 📊 Part B — Academic Data Analysis

The SQL file contains **33 analytical queries** covering basic, intermediate and advanced SQL concepts.

---

## 🛠️ 1. CRUD Operations

The project demonstrates fundamental database operations.

### Create

Data is inserted using:

```sql
INSERT INTO ...
```

### Read

Data is retrieved using:

```sql
SELECT ...
FROM ...
```

### Update

Student information is modified using:

```sql
UPDATE Students
SET ...
WHERE ...;
```

### Delete

The project demonstrates deletion using:

```sql
DELETE ...
```

A deletion query removes students based on an enrollment-year condition.

This demonstrates the fundamental **CRUD operations** used in relational database systems.

---

## 🗑️ 2. Student Deletion Analysis

The SQL file contains a deletion operation using an `INNER JOIN`:

```sql
DELETE s1
FROM Students s1
INNER JOIN Enrollments e1
ON s1.Student_id = e1.Student_id
WHERE YEAR(CURDATE()) - YEAR(e1.enrollment_date) = 1;
```

The operation removes matching student records based on the enrollment-year condition.

Because the student relationships use:

```sql
ON DELETE CASCADE
```

related enrollment, attendance and grade records can also be affected when the corresponding student is deleted.

---

## 📅 3. Student Admission & Date Analysis

The project uses date functions to analyze student admission and academic records.

Examples include:

```sql
YEAR()
MONTH()
CURDATE()
DATEDIFF()
DATE_FORMAT()
```

These functions are used to:

* Extract years
* Extract months
* Calculate elapsed time
* Format dates
* Perform time-based analysis

---

## 📊 4. Attendance Percentage Analysis

Attendance records are converted into numerical values:

```text
Present → 1
Late    → 0.5
Absent  → 0
```

The project calculates attendance percentages for students and courses.

### Overall Attendance Result

```text
Average Attendance = 78.33%
```

This provides an overall view of attendance performance across the dataset.

---

## ⚠️ 5. Students Below 75% Attendance

The project identifies students whose attendance is below the 75% threshold.

### Result

```text
12 students
```

were identified with attendance below:

```text
75%
```

This demonstrates the use of:

* `SUM()`
* `CASE`
* `GROUP BY`
* `HAVING`
* Percentage calculations

---

## 🚫 6. Students Below 50% Attendance & Failing

The project also checks students who satisfy both:

```text
Attendance < 50%
AND
Failing Academic Performance
```

### Result

```text
No matching students
```

were returned for the current dataset and query conditions.

This demonstrates combining multiple academic conditions in SQL.

---

## 📈 7. Attendance Performance Categories

A `CASE` expression categorizes students according to attendance percentage.

```sql
CASE
    WHEN attendance_percentage > 80 THEN 'Regular'
    WHEN attendance_percentage >= 50 THEN 'Irregular'
    ELSE 'Defaulter'
END
```

### Classification

| **Attendance Percentage** | **Category** |
| ------------------------- | ------------ |
| > 80%                     | Regular      |
| 50% – 80%                 | Irregular    |
| < 50%                     | Defaulter    |

The analysis identifies students such as:

```text
Student 26 → 25% → Defaulter
```

while students with attendance between 50% and 80% are categorized as **Irregular**.

---

## 🏆 8. Highest & Lowest Marks

The project analyzes student grades to identify academic extremes.

### Highest Mark

```text
Student 30 → 96 marks
```

### Lowest Mark

```text
Student 20 → 38 marks
```

This demonstrates the use of:

```sql
MAX()
MIN()
```

and related aggregation techniques.

---

## 📊 9. Average Marks by Course

The project calculates average marks for each course.

| **Course**                | **Average Marks** |
| ------------------------- | ----------------: |
| Python                    |             88.50 |
| Data Structures           |             76.00 |
| Database Systems          |             64.00 |
| Computer Architecture     |             48.00 |
| Operating Systems         |             88.00 |
| Financial Accounting      |             68.00 |
| Business Economics        |             91.00 |
| Corporate Accounting      |             73.00 |
| Business Law              |             42.00 |
| Taxation                  |             67.00 |
| Engineering Drawing       |             72.50 |
| Basic Electronics         |             95.00 |
| Computer Fundamentals     |             45.00 |
| Technical Mathematics     |             78.00 |
| Web Technology            |             52.00 |
| Web Development           |             59.00 |
| Computer Networks         |             38.00 |
| Cyber Security            |             93.00 |
| Cloud Computing           |             74.00 |
| Software Engineering      |             61.00 |
| Principles of Management  |             91.50 |
| Marketing Management      |             57.00 |
| Human Resource Management |             82.00 |
| Business Communication    |             44.00 |
| Entrepreneurship          |             72.00 |

This analysis demonstrates:

```text
AVG()
GROUP BY
ORDER BY
```

for course-level performance analysis.

---

## 🏅 10. Student Ranking Using DENSE_RANK()

A Window Function is used to rank students based on marks.

```sql
DENSE_RANK()
OVER(
    ORDER BY marks_obtained DESC
)
```

### Result

```text
Rank 1 → Student 30 → 96 marks
```

This demonstrates advanced SQL ranking without collapsing individual student records.

---

## 📈 11. Students Above Overall Average

The project compares individual student marks with the overall average.

The query identifies:

```text
16 students
```

whose marks are above the overall average.

This demonstrates the use of:

* Aggregate functions
* Subqueries
* Comparison operators

---

## 👨‍🏫 12. Faculty With Multiple Courses

The project identifies faculty members assigned to more than one course.

### Result

| **Faculty** | **Number of Courses** |
| ----------- | --------------------: |
| Amit Shah   |                     2 |
| Neha Joshi  |                     2 |
| Ravi Mehta  |                     3 |
| Akash Mehta |                     2 |

This demonstrates:

```sql
GROUP BY
HAVING COUNT(*) > 1
```

---

## 🚫 13. Faculty Without Courses

The project checks whether any faculty members are not assigned to courses.

### Result

```text
5 faculty members
```

were identified without course assignments:

```text
Faculty IDs 121 – 125
```

This demonstrates how `LEFT JOIN` can be used to identify unmatched records.

---

## 🎓 14. Students Not Enrolled in Courses

The project identifies students who do not have enrollment records.

### Result

```text
Meet Nakrani
janu Pokiya
```

These students do not have corresponding enrollment records.

This demonstrates the practical use of:

```sql
LEFT JOIN
WHERE ... IS NULL
```

---

## 📊 15. Students Without Grades

A Full Outer Join-style analysis is used to identify students without corresponding grade records.

### Result

```text
Student 34
Student 35
```

These students do not have matching grade records in the dataset.

---

## 🏢 16. Students by Department

The project performs department-wise student analysis.

### Result

| **Department**          | **Students** |
| ----------------------- | -----------: |
| Business Administration |            5 |
| Commerce                |            7 |
| Computer Science        |            7 |
| Diploma                 |            6 |
| Information Technology  |            7 |

This demonstrates:

```sql
COUNT()
GROUP BY
JOIN
```

for department-level analysis.

---

## 📅 17. Attendance Month Analysis

The `MONTH()` function is used to extract the month from attendance dates.

The current attendance dataset contains:

```text
July
```

with:

```text
60 attendance records
```

This demonstrates practical date extraction for attendance reporting.

---

## ⏳ 18. Years Since Admission

The project uses date-difference calculations to determine the number of years since student admission.

Example function:

```sql
TIMESTAMPDIFF(
    YEAR,
    addmission_date,
    CURDATE()
)
```

For the current dataset, the remaining student records correspond to approximately:

```text
2 years since admission
```

based on the stored admission dates and current date.

---

## 📅 19. Date Formatting

The project formats dates using:

```sql
DATE_FORMAT()
```

Example format:

```text
DD-MM-YYYY
```

This demonstrates how SQL can transform database dates into user-friendly reporting formats.

---

## 🔤 20. String Functions

Several SQL string functions are demonstrated.

### UPPER()

Converts faculty names to uppercase:

```sql
UPPER(name)
```

### LOWER()

Converts text to lowercase:

```sql
LOWER(name)
```

### TRIM()

Removes unnecessary leading and trailing spaces:

```sql
TRIM(name)
```

### REPLACE()

Replaces `NULL` or unwanted values using conditional logic.

These operations demonstrate practical data-cleaning and transformation techniques.

---

## 📈 21. Cumulative Attendance Analysis

A Window Function is used to calculate cumulative attendance-related values across courses.

Example:

```sql
SUM(...)
OVER(
    ORDER BY ...
    ROWS BETWEEN UNBOUNDED PRECEDING
    AND CURRENT ROW
)
```

This demonstrates how Window Functions can calculate cumulative metrics while preserving individual rows.

---

## 📈 22. Running Total of Student Enrollments

The project calculates the running total of distinct students enrolled by month.

The resulting cumulative counts include:

| **Month** | **New Students** | **Running Total** |
| --------- | ---------------: | ----------------: |
| June      |               29 |                29 |
| July      |                1 |                30 |

### Final Running Total

```text
30 distinct students
```

This demonstrates:

```sql
SUM() OVER()
```

combined with grouped date analysis.

---

## 🏷️ 23. Student Performance Classification

A `CASE` expression categorizes students according to marks.

### Classification Rule

| **Marks** | **Performance Level** |
| --------- | --------------------- |
| > 90      | Excellent             |
| 75 – 90   | Good                  |
| Below 75  | Needs Improvement     |

Example:

```sql
CASE
    WHEN marks_obtained > 90 THEN 'Excellent'
    WHEN marks_obtained >= 75 THEN 'Good'
    ELSE 'Needs Improvement'
END
```

This converts numerical academic performance into meaningful categories.

---

## 📊 24. Course-wise Highest & Lowest Marks

The project calculates the highest and lowest marks for individual courses.

This provides course-level performance analysis and demonstrates the use of:

```sql
MAX()
MIN()
GROUP BY
```

---

## 🧮 25. Overall Academic Analysis

The project combines multiple SQL techniques to analyze:

* Student performance
* Course performance
* Attendance
* Faculty workload
* Department distribution
* Enrollment records
* Academic rankings

This makes the database suitable for practical SQL and data-analysis practice.

---

# 🛠️ Tech Stack

| **Tool / Concept**         | **Purpose**                                           |
| -------------------------- | ----------------------------------------------------- |
| 🐬 **MySQL 8.0**           | Relational Database Management System                 |
| 💻 **SQL**                 | Data management and analysis                          |
| 🔐 **Primary Keys**        | Unique record identification                          |
| 🔗 **Foreign Keys**        | Maintaining table relationships                       |
| 🛡️ **Constraints**        | Data integrity                                        |
| 🗑️ **ON DELETE CASCADE**  | Maintaining dependent records                         |
| 🔗 **INNER JOIN**          | Matching relational records                           |
| 🔗 **LEFT JOIN**           | Finding matching and unmatched records                |
| 🧠 **Subqueries**          | Nested analytical queries                             |
| 📊 **Aggregate Functions** | `AVG`, `COUNT`, `SUM`, `MAX`, `MIN`                   |
| 📋 **GROUP BY**            | Group-based analysis                                  |
| 🔎 **HAVING**              | Filtering grouped results                             |
| 📅 **Date Functions**      | `YEAR`, `MONTH`, `CURDATE`, `DATEDIFF`, `DATE_FORMAT` |
| 🔤 **String Functions**    | `CONCAT`, `UPPER`, `LOWER`, `TRIM`, `REPLACE`         |
| 📈 **Window Functions**    | Running totals and ranking                            |
| 🏅 **DENSE_RANK()**        | Student ranking                                       |
| 🏷️ **CASE**               | Conditional classification                            |

---

# 📈 Results & Insights

After executing the SQL analysis, the project produces the following key results.

## 🎓 Student Insights

* 👤 **35 students** were initially inserted
* 🗑️ **3 students** were removed through the deletion operation
* 🎓 **32 students** remain for subsequent analysis
* 📊 **12 students** have attendance below 75%
* 🚫 **2 students** are not enrolled in any course
* 📊 **2 students** do not have grade records
* 🏆 Highest recorded mark = **96**
* 📉 Lowest recorded mark = **38**
* 📈 **16 students** scored above the overall average

---

## 📚 Course Insights

* 📚 **25 courses**
* 📝 **38 enrollment records**
* 📊 Average marks calculated for all 25 courses
* 👥 Course enrollment analyzed using `COUNT()` and `GROUP BY`
* 📈 Course-level highest and lowest marks identified

---

## 📅 Attendance Insights

* 📅 **60 attendance records**
* 📊 Overall average attendance = **78.33%**
* ⚠️ **12 students** have attendance below 75%
* 🚫 Students below 50% attendance and failing returned **no matching records**
* 📅 Attendance records are concentrated in **July**
* 🏷️ Students are classified as:

  * Regular
  * Irregular
  * Defaulter

---

## 👨‍🏫 Faculty Insights

* 👨‍🏫 **25 faculty records**
* 📚 Faculty course assignments analyzed
* 👨‍🏫 Multiple-course faculty identified
* 🚫 **5 faculty members** have no assigned courses

Faculty members with more than one course include:

| **Faculty** | **Courses** |
| ----------- | ----------: |
| Amit Shah   |           2 |
| Neha Joshi  |           2 |
| Ravi Mehta  |           3 |
| Akash Mehta |           2 |

---

## 🏢 Department Insights

The remaining student population is distributed as follows:

| **Department**          | **Students** |
| ----------------------- | -----------: |
| Business Administration |            5 |
| Commerce                |            7 |
| Computer Science        |            7 |
| Diploma                 |            6 |
| Information Technology  |            7 |

---

## 🏆 Academic Performance Insights

### Highest Mark

```text
Student 30 → 96
```

### Lowest Mark

```text
Student 20 → 38
```

### Ranking

```text
DENSE_RANK()
```

is used to rank students according to marks.

### Performance Categories

```text
Excellent
Good
Needs Improvement
```

---

## 📈 Advanced SQL Insights

The project demonstrates:

* 🔗 Multiple-table JOINs
* 🧠 Subqueries
* 📊 Aggregations
* 📈 Window Functions
* 🏅 `DENSE_RANK()`
* 📅 Date-based analysis
* 🔤 String transformations
* 🏷️ `CASE` classifications
* 📊 Running totals
* 🎓 Academic performance analysis
* 📅 Attendance percentage calculations

---

# 🔍 Data Quality & Design Notes

The project demonstrates several important relational database design concepts.

### 🔐 Primary Keys

Each major table contains a Primary Key for unique record identification.

Examples:

```text
Departments.department_id
Students.Student_id
Faculty.faculty_id
Courses.course_id
Enrollments.enrollment_id
Attendance.attendance_id
Grades.grade_id
```

### 🔗 Foreign Keys

Relationships are maintained through Foreign Keys between:

```text
Departments → Students
Departments → Faculty
Faculty → Courses
Students → Enrollments
Courses → Enrollments
Students → Attendance
Courses → Attendance
Students → Grades
Courses → Grades
```

### 🗑️ Cascade Deletion

Student-dependent tables use:

```sql
ON DELETE CASCADE
```

This helps maintain referential integrity when a student record is deleted.

### 📊 Attendance Logic

Attendance uses weighted values:

```text
Present = 1
Late    = 0.5
Absent  = 0
```

This enables more detailed attendance percentage calculations.

### 📅 Dynamic Date Functions

Several queries use:

```sql
CURDATE()
```

Therefore, time-based results can change automatically as the current date changes.

---

## ⚠️ Important Design Observations

### 1. Admission-Date Column Naming

The actual SQL schema uses:

```text
addmission_date
```

instead of the conventional spelling:

```text
admission_date
```

For consistency, the README reflects the actual SQL schema.

### 2. Student Deletion Logic

The deletion query uses:

```sql
YEAR(CURDATE()) - YEAR(enrollment_date) = 1
```

This compares calendar years rather than exact elapsed time.

For a production system, a more precise date comparison could be used.

### 3. Attendance and Grade Relationships

For more precise course-level analysis, Attendance and Grades should generally be joined using both:

```text
Student_id
+
course_id
```

to avoid accidental matching between different courses for the same student.

### 4. Data Validation

For a production-ready version, additional constraints could be added for:

* Duplicate enrollments
* Duplicate attendance records
* Valid marks range
* Valid attendance status
* Unique student email
* Valid phone numbers

---

# 🏆 Advantages

| **Advantage**               | **Details**                                      |
| --------------------------- | ------------------------------------------------ |
| 🎓 **Academic Use Case**    | Represents a realistic student management system |
| 🗄️ **Relational Design**   | Uses seven connected database tables             |
| 🔐 **Data Integrity**       | Uses Primary Keys and Foreign Keys               |
| 🗑️ **Cascade Operations**  | Demonstrates `ON DELETE CASCADE`                 |
| 🔗 **JOIN Practice**        | Demonstrates relational table joins              |
| 🧠 **Analytical SQL**       | Uses aggregation and subqueries                  |
| 📊 **Attendance Analysis**  | Calculates attendance percentages                |
| 🏆 **Performance Analysis** | Analyzes student marks and grades                |
| 📈 **Advanced SQL**         | Uses Window Functions                            |
| 🏅 **Ranking**              | Uses `DENSE_RANK()`                              |
| 📅 **Date Analysis**        | Uses multiple SQL date functions                 |
| 🔤 **Data Transformation**  | Uses SQL string functions                        |
| 🏷️ **Conditional Logic**   | Uses `CASE` expressions                          |
| 📚 **Portfolio Ready**      | Demonstrates practical SQL skills                |
| 🚀 **Extensible**           | Can be expanded with dashboards and advanced SQL |

---

# 🔮 Future Improvements

Possible extensions for the project:

* ➕ Add unique constraints for enrollment records
* ➕ Add unique attendance constraints per student/course/date
* ➕ Add student GPA calculation
* ➕ Add semester management
* ➕ Add academic year management
* ➕ Add examination and assignment tables
* ➕ Add more advanced CTE queries
* ➕ Add Recursive CTE examples
* ➕ Add `ROW_NUMBER()`
* ➕ Add more Window Functions
* ➕ Add SQL Views for academic reports
* ➕ Add Stored Procedures
* ➕ Add Triggers
* ➕ Add indexes for performance optimization
* ➕ Analyze execution plans
* ➕ Add student-wise performance dashboards
* ➕ Add department-wise attendance dashboards
* ➕ Connect MySQL with **Power BI**
* ➕ Build an interactive **Student Analytics Dashboard**
* ➕ Integrate Python for advanced statistical analysis
* ➕ Build an ML model for student performance prediction

---

# ▶️ How to Run

## 1️⃣ Install MySQL

Make sure MySQL 8.0 or later is installed on your system.

Verify the installation:

```sql
SELECT VERSION();
```

---

## 2️⃣ Create the Database

Open **MySQL Command Line** and run:

```sql
CREATE DATABASE Student_Performance_andAttendance_Tracker;
```

---

## 3️⃣ Select the Database

```sql
USE Student_Performance_andAttendance_Tracker;
```

---

## 4️⃣ Run the SQL File

From the MySQL command line:

```bash
mysql -u root -p < Student_Performance_and_Attendance_Tracker.sql
```

Enter your MySQL password when prompted.

---

## 5️⃣ Verify the Tables

Run:

```sql
SHOW TABLES;
```

Expected tables:

```text
Attendance
Courses
Departments
Enrollments
Faculty
Grades
Students
```

---

## 6️⃣ Verify the Database

```sql
SELECT DATABASE();
```

Expected result:

```text
Student_Performance_andAttendance_Tracker
```

---

## 7️⃣ Execute the Analysis Queries

Run the analytical queries from the SQL file to reproduce:

* Attendance analysis
* Student performance analysis
* Course analysis
* Faculty analysis
* Department analysis
* Ranking
* Date analysis
* String transformation
* Running totals
* Student classification

---

# 📊 SQL Concepts Covered

```text
✓ Database Creation
✓ Table Creation
✓ INSERT
✓ SELECT
✓ UPDATE
✓ DELETE
✓ Primary Keys
✓ Foreign Keys
✓ Constraints
✓ ON DELETE CASCADE
✓ INNER JOIN
✓ LEFT JOIN
✓ Subqueries
✓ GROUP BY
✓ HAVING
✓ COUNT()
✓ SUM()
✓ AVG()
✓ MAX()
✓ MIN()
✓ CASE
✓ YEAR()
✓ MONTH()
✓ CURDATE()
✓ DATEDIFF()
✓ DATE_FORMAT()
✓ TIMESTAMPDIFF()
✓ CONCAT()
✓ UPPER()
✓ LOWER()
✓ TRIM()
✓ REPLACE()
✓ DENSE_RANK()
✓ SUM() OVER()
✓ Running Totals
✓ Attendance Percentage
✓ Academic Classification
```

---

# 🎯 Learning Outcomes

By completing this project, the following practical SQL skills are demonstrated:

* Designing relational databases
* Creating connected database tables
* Applying Primary and Foreign Keys
* Maintaining referential integrity
* Performing CRUD operations
* Joining multiple tables
* Writing analytical SQL queries
* Using aggregate functions
* Working with subqueries
* Performing date-based analysis
* Performing string transformations
* Using Window Functions
* Ranking records using `DENSE_RANK()`
* Creating running totals
* Calculating attendance percentages
* Classifying academic performance
* Converting raw academic data into meaningful insights

---

# 👤 Author

### **Himanshi Sangani**

🎓 **Bachelor of Computer Application**

> *"Learning SQL today, building data-driven solutions tomorrow."*

---

# 🙏 Acknowledgements

Special thanks to the learning resources and communities that support SQL and data-analysis learning:

* 📚 **MySQL Documentation** — SQL syntax and database reference
* 💻 **SQL Learning Platforms** — Query practice and problem solving
* 📖 **Data Analytics Communities** — Practical SQL concepts and examples
* 🧪 **Hands-on Practice** — Academic datasets and SQL exercises
* 🚀 **Continuous Learning** — Building practical database projects for portfolio development

---


