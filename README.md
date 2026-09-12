# 📚 Student Performance and Attendance Tracker

> A MySQL-based relational database project for managing and analyzing **departments, students, faculty, courses, enrollments, attendance, and grades** using practical SQL queries.

---

## 📌 Overview

The **Student Performance and Attendance Tracker** is a relational database project built with **MySQL**.

The project is designed to manage university/college academic data and perform practical SQL analysis across seven main tables:

* **Departments**
* **Students**
* **Faculty**
* **Courses**
* **Enrollments**
* **Attendance**
* **Grades**

It demonstrates how relational databases can be used to organize student academic information and generate useful insights related to **student performance, attendance, course enrollment, faculty allocation, and academic analysis**.

---

## 🎯 Problem Statement

Educational institutions need structured systems to manage information about students, departments, faculty members, courses, enrollments, attendance, and grades.

This project uses SQL to answer practical academic questions such as:

* Which students belong to the Computer Science department?
* Which students have attendance below 75%?
* Which students have attendance below 50% and are failing?
* Who are the top 10 highest-scoring students?
* Which faculty members are not assigned to any course?
* How many students are enrolled in each department?
* What is the average marks for each course?
* Which students are not enrolled in any course?
* Which students do not have grades?
* Which students scored above the overall average?
* What are the highest and lowest marks in each course?
* Which faculty members teach more than one course?
* How can students be ranked based on marks?
* How can attendance be categorized as Regular, Irregular, or Defaulter?
* How can student performance be classified using `CASE`?

---

## 🎯 Objective

The main objective is to build a relational academic database and use SQL to perform practical **student performance and attendance analysis**.

The project focuses on:

* Database and table creation
* Primary and foreign key relationships
* CRUD operations
* Data retrieval and filtering
* Aggregate functions
* `GROUP BY` and `HAVING`
* `INNER JOIN`, `LEFT JOIN`, and `RIGHT JOIN`
* Full outer join simulation using `UNION`
* Subqueries
* Date functions
* String functions
* Window functions
* Running totals
* Ranking using `DENSE_RANK()`
* Conditional logic using `CASE`
* Attendance percentage calculation
* Student performance analysis
* Course and faculty analysis

---

## 📝 Assumptions

* Each department has a unique `department_id`.
* Each student has a unique `Student_id`.
* Each faculty member has a unique `faculty_id`.
* Each course has a unique `course_id`.
* Each enrollment has a unique `enrollment_id`.
* Students belong to an existing department.
* Faculty members belong to an existing department.
* Courses are assigned to existing faculty members.
* Enrollments are associated with existing students and courses.
* A student can enroll in multiple courses.
* A course can have multiple students.
* Attendance status can be `Present`, `Absent`, or `Late`.
* `Late` attendance is counted as `0.5` for attendance percentage calculations.
* Students with attendance above 80% are categorized as **Regular**.
* Students with attendance between 50% and 80% are categorized as **Irregular**.
* Students below 50% attendance are categorized as **Defaulter**.
* Student performance is classified according to marks obtained.

---

## 🗄️ Database Tables

### Departments

Stores information about academic departments.

| Column            | Description                           |
| ----------------- | ------------------------------------- |
| `department_id`   | Unique identifier for each department |
| `department_name` | Name of the department                |

---

### Students

Stores student personal, contact, admission, and department information.

| Column            | Description                            |
| ----------------- | -------------------------------------- |
| `Student_id`      | Unique identifier for each student     |
| `name`            | Student's full name                    |
| `dob`             | Student's date of birth                |
| `gender`          | Student's gender                       |
| `email`           | Student email address                  |
| `phone_number`    | Student contact number                 |
| `address`         | Student address                        |
| `addmission_date` | Student admission date                 |
| `department_id`   | Department associated with the student |

---

### Faculty

Stores information about faculty members and their department assignments.

| Column          | Description                                   |
| --------------- | --------------------------------------------- |
| `faculty_id`    | Unique identifier for each faculty member     |
| `name`          | Faculty member's name                         |
| `email`         | Faculty email address                         |
| `phone_number`  | Faculty contact number                        |
| `department_id` | Department associated with the faculty member |

---

### Courses

Stores information about courses and their assigned faculty members.

| Column        | Description                           |
| ------------- | ------------------------------------- |
| `course_id`   | Unique identifier for each course     |
| `course_name` | Name of the course                    |
| `faculty_id`  | Faculty member assigned to the course |

---

### Enrollments

Stores student course enrollment information.

| Column            | Description                           |
| ----------------- | ------------------------------------- |
| `enrollment_id`   | Unique identifier for each enrollment |
| `Student_id`      | Identifies the enrolled student       |
| `course_id`       | Identifies the selected course        |
| `enrollment_date` | Date of course enrollment             |

---

### Attendance

Stores daily attendance records for students.

| Column            | Description                                  |
| ----------------- | -------------------------------------------- |
| `attendance_id`   | Unique identifier for each attendance record |
| `Student_id`      | Identifies the student                       |
| `course_id`       | Identifies the course                        |
| `attendance_date` | Date of attendance                           |
| `status`          | Attendance status: Present, Absent, or Late  |

---

### Grades

Stores student marks and grades for courses.

| Column           | Description                             |
| ---------------- | --------------------------------------- |
| `grade_id`       | Unique identifier for each grade record |
| `Student_id`     | Identifies the student                  |
| `course_id`      | Identifies the course                   |
| `marks_obtained` | Marks obtained by the student           |
| `grade`          | Grade received by the student           |



---

## 💡 Key Insights

The analysis queries generated several useful academic insights:

* The **Computer Science** department contains **7 students** after the dropout deletion.
* **32 students** remain after removing students identified by the dropout condition.
* **12 students** have attendance below **75%**.
* **2 students** are not enrolled in any course.
* **2 students** do not have grade records.
* The highest recorded mark is **96**.
* The lowest recorded mark is **38**.
* The overall average student attendance is approximately **78.33%**.
* **5 faculty members** are not assigned to any course.
* **4 faculty members** are assigned to more than one course.
* The highest marks were achieved by **Student 30 with 96 marks**.
* Students were ranked using the `DENSE_RANK()` window function.
* Student performance was classified as **Excellent, Good, or Needs Improvement**.
* Attendance was categorized as **Regular, Irregular, or Defaulter**.
* A running total of student enrollments was calculated using a window function.

---

## 🛠️ Tools & Technologies

* **MySQL**
* **MySQL Command Line**
* **SQL**
* Relational Database Concepts

---

## ▶️ How to Clone and Run

### 1. Clone the Repository

```bash
git clone https://github.com/himanshisangani64-beep/Student_Performance_andAttendance_Tracker.git
```

### 2. Open the Project

```bash
cd Student_Performance_andAttendance_Tracker
```

### 3. Open MySQL

Open **MySQL Command Line Client** and execute the SQL script.

### 4. Run the SQL Script

Execute the statements in this order:

```text
1. Create Database
2. Select Database
3. Create Departments Table
4. Create Students Table
5. Create Faculty Table
6. Create Courses Table
7. Create Enrollments Table
8. Create Attendance Table
9. Create Grades Table
10. Insert Department Data
11. Insert Student Data
12. Insert Faculty Data
13. Insert Course Data
14. Insert Enrollment Data
15. Insert Attendance Data
16. Insert Grade Data
17. Run UPDATE Query
18. Run DELETE Query
19. Run Analysis Queries
```

If the SQL file is available inside the project folder, you can also execute it using:

```sql
SOURCE Student_Performance_andAttendance_Tracker.sql;
```

---

## 🔎 Verify the Tables

```sql
SHOW TABLES;

SELECT * FROM Departments;
SELECT * FROM Students;
SELECT * FROM Faculty;
SELECT * FROM Courses;
SELECT * FROM Enrollments;
SELECT * FROM Attendance;
SELECT * FROM Grades;
```

---

## 🏁 Conclusion

Overall, the **Student Performance and Attendance Tracker** demonstrates how SQL and relational database concepts can be used to manage academic data and generate meaningful insights.

The project covers student records, departments, faculty, courses, enrollments, attendance, and grades while applying practical SQL techniques such as **joins, subqueries, aggregate functions, date functions, string functions, CASE statements, and window functions**.

This project provides a strong practical foundation for **SQL, database management, data analysis, and academic data reporting**.

---

## 🚀 Future Scope

* Add GPA and semester-wise performance analysis.
* Add detailed grade management.
* Add course-wise student performance dashboards.
* Add semester and academic-year analysis.
* Connect the database with **Power BI** for interactive dashboards.
* Connect the database with **Excel** for reporting.
* Add automated attendance reports.
* Add student performance prediction using **Machine Learning**.
* Build an application/API layer for the database.

---

## 👩‍💻 Author

### **Himanshi Sangani**


