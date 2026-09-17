-- create database 
create database Student_Performance_andAttendance_Tracker;
--OutPut
Query OK, 1 row affected 


--select database
use Student_Performance_andAttendance_Tracker;
-- OutPut
Database changed


-- ==================================
-- Database Schema
-- ==================================


-- Departments

create table Departments (
    department_id int primary key,
    department_name varchar(30)
);

-- output 
Query OK, 0 rows affected


--  Student

create table Students(
    Student_id int primary key,
    name varchar(30),
    dob date,
    gender varchar(30),
    email varchar(50),
    phone_number varchar(10) ,
    address varchar(100),
    addmission_date date,
    department_id int,
    foreign key (department_id) references Departments (department_id)
);
-- OutPut
Query OK, 0 rows affected



-- Faculty
create table Faculty (
    faculty_id int primary key,
    name varchar(30),
    email varchar(50),
    phone_number varchar(10),
    department_id int ,
    foreign key (department_id) references Departments (department_id)
);

-- OutPut 
Query OK, 0 rows affected 


-- Courses

create table Courses(
    course_id int primary key,
    course_name varchar(30),
    faculty_id int,
    foreign key (faculty_id) references Faculty(faculty_id)
);

-- OutPut
Query OK, 0 rows affected


-- Enrollments

create table Enrollments(
    enrollment_id int primary key,
    Student_id int,
    course_id int,
    enrollment_date date,
    foreign key (Student_id) references  Students(Student_id) on delete cascade,
    foreign key (course_id) references Courses(course_id)
);

-- output 
Query OK, 0 rows affected



-- Attendance 

create table Attendance(
    attendance_id int primary key,
    Student_id int,
    course_id int,
    attendance_date date,
    status varchar(30) check(status in ("Present","Absent","Late")),
    foreign key (Student_id) references Students(Student_id) on delete cascade,
    foreign key (course_id) references Courses(course_id)
);

-- OutPut
Query OK, 0 rows affected


-- Grades 

create table Grades(
    grade_id int primary key,
    Student_id int, 
    course_id int,
    marks_obtained int,
    grade varchar(10),
    foreign key (Student_id) references Students (Student_id) on delete cascade,
    foreign key (course_id) references Courses(course_id)
);

-- OutPut 
Query OK, 0 rows affected 


-- 1 ) Insert New Student , Faculty member , courses and enrollments

Insert into Departments (department_id, department_name)
values
(1, 'Computer Science'),
(2, 'Commerce'),
(3, 'Diploma'),
(4, 'Information Technology'),
(5, 'Business Administration');
-- OutPut
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0



Insert into Students
(Student_id, name, dob, gender, email, phone_number, address, addmission_date, department_id)
values

(1, 'Aarav Patel', '2005-05-12', 'Male', 'aarav.patel@gmail.com', '9876500001', 'Rajkot', '2024-06-15', 1),
(2, 'Diya Shah', '2006-02-20', 'Female', 'diya.shah@gmail.com', '9876500002', 'Amreli', '2024-06-15', 2),
(3, 'Rohan Mehta', '2005-11-10', 'Male', 'rohan.mehta@gmail.com', '9876500003', 'Gondal', '2024-06-16', 3),
(4, 'Priya Patel', '2006-01-18', 'Female', 'priya.patel@gmail.com', '9876500004', 'Rajkot', '2024-06-16', 4),
(5, 'Yash Solanki', '2005-08-25', 'Male', 'yash.solanki@gmail.com', '9876500005', 'Jamnagar', '2024-06-17', 5),
(6, 'Neha Joshi', '2006-04-05', 'Female', 'neha.joshi@gmail.com', '9876500006', 'Morbi', '2024-06-17', 1),
(7, 'Vivaan Shah', '2005-03-15', 'Male', 'vivaan.shah@gmail.com', '9876500007', 'Rajkot', '2024-06-18', 2),
(8, 'Pinal Patel', '2006-07-22', 'Female', 'pinal.patel@gmail.com', '9876500008', 'Amreli', '2024-06-18', 3),
(9, 'Sita Mehta', '2005-12-30', 'Female', 'sita.mehta@gmail.com', '9876500009', 'Gondal', '2024-06-19', 4),
(10, 'Kunal Shah', '2005-09-14', 'Male', 'kunal.shah@gmail.com', '9876500010', 'Rajkot', '2024-06-19', 5),
(11, 'Mansi Patel', '2006-06-11', 'Female', 'mansi.patel@gmail.com', '9876500011', 'Surendranagar', '2024-06-20', 1),
(12, 'Harsh Mehta', '2005-10-08', 'Male', 'harsh.mehta@gmail.com', '9876500012', 'Jamnagar', '2024-06-20', 2),
(13, 'Dev Joshi', '2005-04-21', 'Male', 'dev.joshi@gmail.com', '9876500013', 'Rajkot', '2024-06-21', 3),
(14, 'Riya Shah', '2006-03-17', 'Female', 'riya.shah@gmail.com', '9876500014', 'Amreli', '2024-06-21', 4),
(15, 'Manav Patel', '2005-07-09', 'Male', 'manav.patel@gmail.com', '9876500015', 'Gondal', '2024-06-22', 5),
(16, 'Khushi Mehta', '2006-05-28', 'Female', 'khushi.mehta@gmail.com', '9876500016', 'Rajkot', '2024-06-22', 1),
(17, 'Dhruv Shah', '2005-02-13', 'Male', 'dhruv.shah@gmail.com', '9876500017', 'Morbi', '2024-06-23', 2),
(18, 'Jiya Patel', '2006-08-19', 'Female', 'jiya.patel@gmail.com', '9876500018', 'Jamnagar', '2024-06-23', 3),
(19, 'Aditya Sharma', '2005-01-25', 'Male', 'aditya.sharma@gmail.com', '9876500019', 'Rajkot', '2024-06-24', 4),
(20, 'Ananya Joshi', '2006-09-12', 'Female', 'ananya.joshi@gmail.com', '9876500020', 'Amreli', '2024-06-24', 1),
(21, 'Rahul Shah', '2005-06-07', 'Male', 'rahul.shah@gmail.com', '9876500021', 'Gondal', '2024-06-25', 2),
(22, 'Kavya Patel', '2006-10-16', 'Female', 'kavya.patel@gmail.com', '9876500022', 'Rajkot', '2024-06-25', 3),
(23, 'Sahil Mehta', '2005-12-05', 'Male', 'sahil.mehta@gmail.com', '9876500023', 'Morbi', '2024-06-26', 4),
(24, 'Ayesha Khan', '2006-11-21', 'Female', 'ayesha.khan@gmail.com', '9876500024', 'Jamnagar', '2024-06-26', 5),
(25, 'Jay Patel', '2006-01-09', 'Male', 'jay.patel@gmail.com', '9876500025', 'Rajkot', '2024-06-27', 1),
(26, 'Nisha Shah', '2005-08-14', 'Female', 'nisha.shah@gmail.com', '9876500026', 'Amreli', '2024-06-27', 2),
(27, 'Akash Mehta', '2006-02-26', 'Male', 'akash.mehta@gmail.com', '9876500027', 'Gondal', '2024-06-28', 3),
(28, 'Sneha Patel', '2005-11-18', 'Female', 'sneha.patel@gmail.com', '9876500028', 'Rajkot', '2024-06-28', 4),
(29, 'Ravi Joshi', '2006-04-30', 'Male', 'ravi.joshi@gmail.com', '9876500029', 'Morbi', '2024-06-29', 5),
(30, 'Pooja Shah', '2005-09-23', 'Female', 'pooja.shah@gmail.com', '9876500030', 'Jamnagar', '2024-06-29', 1),
(31, 'Aarav Sarma', '2005-01-10', 'Male', 'aarav.Sarma@gmail.com', '9684765701', 'Morbi', '2024-06-30', 3),
(32, 'Jiya Patel', '2005-05-30', 'Female', 'Jiya.Patel@gmail.com', '9638745211', 'Morbi', '2024-06-30', 3),
(33, 'Dev Taraviya', '2005-03-01', 'Male', 'Dev.Taraviya@gmail.com', '9638775213', 'Jamnagar', '2024-07-01', 1),
(34, 'Meet Nakrani', '2005-04-15', 'Male', 'Meet.Nakrani@gmail.com', '9638745213', 'Amreli', '2024-07-01', 2),
(35, 'janu Pokiya', '2005-11-11', 'Female', 'janu.Pokiya@gmail.com', '9630745213', 'Rajkot', '2024-07-02', 4);


-- OutPut
Query OK, 35 rows affected (0.01 sec)
Records: 35  Duplicates: 0  Warnings: 0




Insert into Faculty
(faculty_id, name, email, phone_number, department_id)
Values

(101, 'Rahul Sharma', 'rahul.sharma@gmail.com', '9876510001', 1),
(102, 'Priya Patel', 'priya.patel@gmail.com', '9876510002', 2),
(103, 'Amit Shah', 'amit.shah@gmail.com', '9876510003', 3),
(104, 'Neha Joshi', 'neha.joshi@gmail.com', '9876510004', 4),
(105, 'Ravi Mehta', 'ravi.mehta@gmail.com', '9876510005', 5),
(106, 'Pooja Shah', 'pooja.shah@gmail.com', '9876510006', 1),
(107, 'Kiran Patel', 'kiran.patel@gmail.com', '9876510007', 2),
(108, 'Meera Joshi', 'meera.joshi@gmail.com', '9876510008', 2),
(109, 'Vikas Patel', 'vikas.patel@gmail.com', '9876510009', 3),
(110, 'Anjali Shah', 'anjali.shah@gmail.com', '9876510010', 4),
(111, 'Suresh Mehta', 'suresh.mehta@gmail.com', '9876510011', 1),
(112, 'Komal Joshi', 'komal.joshi@gmail.com', '9876510012', 2),
(113, 'Raj Shah', 'raj.shah@gmail.com', '9876510013', 3),
(114, 'Nisha Patel', 'nisha.patel@gmail.com', '9876510014', 4),
(115, 'Harsh Mehta', 'harsh.mehta@gmail.com', '9876510015', 1),
(116, 'Sneha Joshi', 'sneha.joshi@gmail.com', '9876510016', 2),
(117, 'Dhruv Patel', 'dhruv.patel@gmail.com', '9876510017', 3),
(118, 'Mansi Shah', 'mansi.shah@gmail.com', '9876510018', 4),
(119, 'Akash Mehta', 'akash.mehta@gmail.com', '9876510019', 5),
(120, 'Rina Patel', 'rina.patel@gmail.com', '9876510020', 1),
(121, 'Dhruv joshi', 'dhruv.joshi@gmail.com', '9876110017', 3),
(122, 'Mansi Sangani', 'mansi.Sangani@gmail.com', '9876510018', 2),
(123, 'Akash sakhiya', 'akash.sakhiya@gmail.com', '9876510019', 5),
(124, 'Rina selani', 'rina.selani@gmail.com', '9876510000', 1),
(125, 'Dev Patel', 'Dev.patel@gmail.com', '9876510097', 4);




-- OutPut
Query OK, 25 rows affected (0.01 sec)
Records: 25  Duplicates: 0  Warnings: 0


Insert into Courses
(course_id, course_name, faculty_id)
Values

(201, 'Python Programming', 101),
(202, 'Data Structures', 106),
(203, 'Database Systems', 111),
(204, 'Computer Architecture', 115),
(205, 'Operating Systems', 120),
(206, 'Financial Accounting', 102),
(207, 'Business Economics', 107),
(208, 'Corporate Accounting', 108),
(209, 'Business Law', 112),
(210, 'Taxation', 116),
(211, 'Engineering Drawing', 103),
(212, 'Basic Electronics', 109),
(213, 'Computer Fundamentals', 113),
(214, 'Technical Mathematics', 117),
(215, 'Web Technology', 103),
(216, 'Web Development', 104),
(217, 'Computer Networks', 110),
(218, 'Cyber Security', 114),
(219, 'Cloud Computing', 118),
(220, 'Software Engineering', 104),
(221, 'Principles of Management', 105),
(222, 'Marketing Management', 119),
(223, 'Human Resource Management', 105),
(224, 'Business Communication', 119),
(225, 'Entrepreneurship', 105);

-- OutPut
Query OK, 25 rows affected (0.01 sec)
Records: 25  Duplicates: 0  Warnings: 0



Insert into Enrollments
(enrollment_id, Student_id, course_id, enrollment_date)
Values
(1, 1, 201, '2024-06-20'),
(2, 1, 202, '2024-06-20'),
(3, 1, 203, '2024-06-20'),
(4, 2, 201, '2024-06-21'),
(5, 2, 204, '2024-06-21'),
(6, 3, 202, '2024-06-21'),
(7, 4, 203, '2024-06-22'),
(8, 5, 204, '2024-06-22'),
(9, 6, 205, '2024-06-22'),
(10, 7, 206, '2024-06-23'),
(11, 7, 207, '2024-06-23'),
(12, 8, 208, '2024-06-23'),
(13, 9, 206, '2024-06-24'),
(14, 10, 209, '2024-06-24'),
(15, 11, 210, '2024-06-24'),
(16, 12, 206, '2024-06-25'),
(17, 13, 211, '2024-06-25'),
(18, 14, 212, '2024-06-25'),
(19, 15, 213, '2024-06-26'),
(20, 16, 214, '2024-06-26'),
(21, 17, 215, '2024-06-26'),
(22, 18, 211, '2024-06-27'),
(23, 19, 216, '2024-06-27'),
(24, 20, 217, '2024-06-27'),
(25, 21, 218, '2024-06-28'),
(26, 22, 219, '2024-06-28'),
(27, 23, 220, '2024-06-28'),
(28, 24, 216, '2024-06-29'),
(29, 25, 221, '2024-06-29'),
(30, 26, 222, '2024-06-29'),
(31, 27, 223, '2024-06-30'),
(32, 28, 224, '2024-06-30'),
(33, 29, 225, '2024-06-30'),
(34, 30, 221, '2024-07-01'),
(35, 30, 222, '2024-07-01'),
(36, 31, 218, '2025-06-28'),
(37, 32, 219, '2025-06-28'),
(38, 33, 220, '2025-06-28');





-- OutPut
Query OK, 38 rows affected (0.01 sec)
Records: 38  Duplicates: 0  Warnings: 0




Insert into Attendance
(attendance_id, Student_id, course_id, attendance_date, status)
values
(1, 1, 201, '2025-07-01', 'Present'),
(2, 2, 201, '2025-07-01', 'Absent'),
(3, 3, 202, '2025-07-01', 'Present'),
(4, 4, 203, '2025-07-01', 'Late'),
(5, 5, 204, '2025-07-01', 'Present'),
(6, 6, 205, '2025-07-02', 'Present'),
(7, 7, 206, '2025-07-02', 'Absent'),
(8, 8, 207, '2025-07-02', 'Present'),
(9, 9, 208, '2025-07-02', 'Late'),
(10, 10, 209, '2025-07-02', 'Present'),
(11, 11, 210, '2025-07-03', 'Present'),
(12, 12, 206, '2025-07-03', 'Absent'),
(13, 13, 211, '2025-07-03', 'Present'),
(14, 14, 212, '2025-07-03', 'Late'),
(15, 15, 213, '2025-07-03', 'Present'),
(16, 16, 214, '2025-07-04', 'Present'),
(17, 17, 215, '2025-07-04', 'Absent'),
(18, 18, 211, '2025-07-04', 'Present'),
(19, 19, 216, '2025-07-04', 'Late'),
(20, 20, 217, '2025-07-04', 'Present'),
(21, 21, 218, '2025-07-05', 'Present'),
(22, 22, 219, '2025-07-05', 'Absent'),
(23, 23, 220, '2025-07-05', 'Present'),
(24, 24, 216, '2025-07-05', 'Late'),
(25, 25, 221, '2025-07-05', 'Present'),
(26, 26, 222, '2025-07-06', 'Absent'),
(27, 27, 223, '2025-07-06', 'Present'),
(28, 28, 224, '2025-07-06', 'Late'),
(29, 29, 225, '2025-07-06', 'Present'),
(30, 30, 221, '2025-07-06', 'Absent'),
(31, 1, 201, '2025-07-02', 'Present'),
(32, 2, 201, '2025-07-02', 'Present'),
(33, 3, 202, '2025-07-02', 'Present'),
(34, 4, 203, '2025-07-02', 'Late'),
(35, 5, 204, '2025-07-02', 'Present'),
(36, 6, 205, '2025-07-03', 'Present'),
(37, 7, 206, '2025-07-03', 'Present'),
(38, 8, 207, '2025-07-03', 'Present'),
(39, 9, 208, '2025-07-03', 'Late'),
(40, 10, 209, '2025-07-03', 'Present'),
(41, 11, 210, '2025-07-04', 'Present'),
(42, 12, 206, '2025-07-04', 'Present'),
(43, 13, 211, '2025-07-04', 'Present'),
(44, 14, 212, '2025-07-04', 'Late'),
(45, 15, 213, '2025-07-04', 'Present'),
(46, 16, 214, '2025-07-05', 'Present'),
(47, 17, 215, '2025-07-05', 'Present'),
(48, 18, 211, '2025-07-05', 'Present'),
(49, 19, 216, '2025-07-05', 'Late'),
(50, 20, 217, '2025-07-05', 'Present'),
(51, 21, 218, '2025-07-06', 'Present'),
(52, 22, 219, '2025-07-06', 'Present'),
(53, 23, 220, '2025-07-06', 'Present'),
(54, 24, 216, '2025-07-06', 'Late'),
(55, 25, 221, '2025-07-06', 'Present'),
(56, 26, 222, '2025-07-07', 'Late'),
(57, 27, 223, '2025-07-07', 'Present'),
(58, 28, 224, '2025-07-07', 'Present'),
(59, 29, 225, '2025-07-07', 'Present'),
(60, 30, 221, '2025-07-07', 'Present');

-- OutPut
Query OK, 60 rows affected (0.01 sec)
Records: 60  Duplicates: 0  Warnings: 0




Insert into Grades
(grade_id, Student_id, course_id, marks_obtained, grade)
values
(1, 1, 201, 92, 'A+'),
(2, 2, 201, 85, 'A'),
(3, 3, 202, 76, 'B'),
(4, 4, 203, 64, 'C'),
(5, 5, 204, 48, 'Fail'),
(6, 6, 205, 88, 'A'),
(7, 7, 206, 55, 'D'),
(8, 8, 207, 91, 'A+'),
(9, 9, 208, 73, 'B'),
(10, 10, 209, 42, 'Fail'),
(11, 11, 210, 67, 'C'),
(12, 12, 206, 81, 'A'),
(13, 13, 211, 59, 'D'),
(14, 14, 212, 95, 'A+'),
(15, 15, 213, 45, 'Fail'),
(16, 16, 214, 78, 'B'),
(17, 17, 215, 52, 'D'),
(18, 18, 211, 86, 'A'),
(19, 19, 216, 69, 'C'),
(20, 20, 217, 38, 'Fail'),
(21, 21, 218, 93, 'A+'),
(22, 22, 219, 74, 'B'),
(23, 23, 220, 61, 'C'),
(24, 24, 216, 49, 'Fail'),
(25, 25, 221, 87, 'A'),
(26, 26, 222, 57, 'D'),
(27, 27, 223, 82, 'A'),
(28, 28, 224, 44, 'Fail'),
(29, 29, 225, 72, 'B'),
(30, 30, 221, 96, 'A+');

-- output
Query OK, 30 rows affected (0.01 sec)
Records: 30  Duplicates: 0  Warnings: 0



-- 2)  Update student records when they change contact details
Update Students set email = "dev.joshi11@gmail.com" , address = "Gondal"
where Student_id = 13;
-- OutPut
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0



--3) delete student who have dropped out 

delete s1 from Students s1 inner join Enrollments e1 
on s1.Student_id = e1.Student_id
where year(CURDATE()) - year(e1.enrollment_date) = 1;
--OutPut
Query OK, 3 rows affected (0.01 sec)


-- 4) Get student enrolled in the computer science department

select s1.Student_id,
       s1.name,
       d1.department_name
from  Students s1 inner join Departments d1 on 
s1.department_id = d1.department_id where d1.department_name = "Computer Science";

-- OutPut
+------------+--------------+------------------+
| Student_id | name         | department_name  |
+------------+--------------+------------------+
|          1 | Aarav Patel  | Computer Science |
|          6 | Neha Joshi   | Computer Science |
|         11 | Mansi Patel  | Computer Science |
|         16 | Khushi Mehta | Computer Science |
|         20 | Ananya Joshi | Computer Science |
|         25 | Jay Patel    | Computer Science |
|         30 | Pooja Shah   | Computer Science |
+------------+--------------+------------------+
7 rows in set (0.00 sec)




-- 5) Retrieve the top 10 highest-scoring students
select Student_id, 
       marks_obtained 
from Grades order by  marks_obtained desc limit 10;

-- output
+------------+----------------+
| Student_id | marks_obtained |
+------------+----------------+
|         30 |             96 |
|         14 |             95 |
|         21 |             93 |
|          1 |             92 |
|          8 |             91 |
|          6 |             88 |
|         25 |             87 |
|         18 |             86 |
|          2 |             85 |
|         27 |             82 |
+------------+----------------+
10 rows in set (0.00 sec)


-- 6) Find student with attendance below 75%
select * from (
    select Student_id,
        count(*) as total_day ,
        round(
            sum(
                case
                when status = "Present" then 1
                when status = "Late"  then 0.5
                else 0
                end 
            ) * 100.00 / count(*)
        ,2) as Total_Percentage
    from Attendance
    group by Student_id
) temp where Total_Percentage < 75;       


-- OutPut
+------------+-----------+------------------+
| Student_id | total_day | Total_Percentage |
+------------+-----------+------------------+
|          2 |         2 |            50.00 |
|          4 |         2 |            50.00 |
|          7 |         2 |            50.00 |
|          9 |         2 |            50.00 |
|         12 |         2 |            50.00 |
|         14 |         2 |            50.00 |
|         17 |         2 |            50.00 |
|         19 |         2 |            50.00 |
|         22 |         2 |            50.00 |
|         24 |         2 |            50.00 |
|         26 |         2 |            25.00 |
|         30 |         2 |            50.00 |
+------------+-----------+------------------+
12 rows in set (0.00 sec)



-- 7) Retrieve student who have attendent below 50% and are failing 
select * from (
    select s1.Student_id,
        g1.grade,
        count(a1.attendance_id) as total_day ,
        round(
            sum(
                case
                when a1.status = "Present" then 1
                when a1.status = "Late"  then 0.5
                else 0
                end 
            ) * 100.00 / count(*)
        ,2) as Total_Percentage
    from Attendance a1 inner join Students s1 inner join Grades g1 on 
    a1.Student_id = s1.Student_id and s1.Student_id = g1.Student_id
    where g1.grade = "Fail"
    group by s1.Student_id ,  g1.grade
) att where Total_Percentage < 50; 
-- OutPut
Empty set (0.00 sec)





-- 8) Find student who scored above 90 or have perfect attendance
select  Student_id,
        marks_obtained,
        Total_attendance
from(
    select g1.Student_id,
          g1.marks_obtained,
          round(
            sum(
                case
                when a1.status = "Present" then 1
                when a1.status = "Late"  then 0.5
                else 0
                end 
            ) * 100.00 / count(*)
        ,2) as Total_attendance
    from Attendance a1 inner join Grades g1 on  
    a1.Student_id = g1.Student_id 
    group by g1.Student_id , g1.marks_obtained
) temp  where  marks_obtained > 90 or  Total_attendance = 100.00 ;
 
-- OutPut
+------------+----------------+------------------+
| Student_id | marks_obtained | Total_attendance |
+------------+----------------+------------------+
|          1 |             92 |           100.00 |
|          3 |             76 |           100.00 |
|          5 |             48 |           100.00 |
|          6 |             88 |           100.00 |
|          8 |             91 |           100.00 |
|         10 |             42 |           100.00 |
|         11 |             67 |           100.00 |
|         13 |             59 |           100.00 |
|         14 |             95 |            50.00 |
|         15 |             45 |           100.00 |
|         16 |             78 |           100.00 |
|         18 |             86 |           100.00 |
|         20 |             38 |           100.00 |
|         21 |             93 |           100.00 |
|         23 |             61 |           100.00 |
|         25 |             87 |           100.00 |
|         27 |             82 |           100.00 |
|         29 |             72 |           100.00 |
|         30 |             96 |            50.00 |
+------------+----------------+------------------+
19 rows in set (0.00 sec)


-- 9) List faculty members not assigned to any course.

select f1.faculty_id,
       f1.name
from Faculty f1 left join Courses c1 on 
f1.faculty_id = c1.faculty_id where
c1.faculty_id is null;

-- OutPut
+------------+---------------+
| faculty_id | name          |
+------------+---------------+
|        121 | Dhruv joshi   |
|        122 | Mansi Sangani |
|        123 | Akash sakhiya |
|        124 | Rina selani   |
|        125 | Dev Patel     |
+------------+---------------+
5 rows in set (0.00 sec)




-- 10) List Student alphabetically by name

select Student_id , name from Students 
order by name asc; 

-- OutPut
+------------+---------------+
| Student_id | name          |
+------------+---------------+
|          1 | Aarav Patel   |
|         19 | Aditya Sharma |
|         27 | Akash Mehta   |
|         20 | Ananya Joshi  |
|         24 | Ayesha Khan   |
|         13 | Dev Joshi     |
|         17 | Dhruv Shah    |
|          2 | Diya Shah     |
|         12 | Harsh Mehta   |
|         35 | janu Pokiya   |
|         25 | Jay Patel     |
|         18 | Jiya Patel    |
|         22 | Kavya Patel   |
|         16 | Khushi Mehta  |
|         10 | Kunal Shah    |
|         15 | Manav Patel   |
|         11 | Mansi Patel   |
|         34 | Meet Nakrani  |
|          6 | Neha Joshi    |
|         26 | Nisha Shah    |
|          8 | Pinal Patel   |
|         30 | Pooja Shah    |
|          4 | Priya Patel   |
|         21 | Rahul Shah    |
|         29 | Ravi Joshi    |
|         14 | Riya Shah     |
|          3 | Rohan Mehta   |
|         23 | Sahil Mehta   |
|          9 | Sita Mehta    |
|         28 | Sneha Patel   |
|          7 | Vivaan Shah   |
|          5 | Yash Solanki  |
+------------+---------------+
32 rows in set (0.00 sec)


-- 11) Count the number of students enrolled in each department 

select d1.department_name , Count(distinct e1.Student_id) as Number_of_Student
from Enrollments e1 inner join  Students  s1 inner join Departments d1 on 
e1.Student_id = s1.Student_id and s1.department_id = d1.department_id  
group by d1.department_name;

-- OutPut
+-------------------------+-------------------+
| department_name         | Number_of_Student |
+-------------------------+-------------------+
| Business Administration |                 5 |
| Commerce                |                 6 |
| Computer Science        |                 7 |
| Diploma                 |                 6 |
| Information Technology  |                 6 |
+-------------------------+-------------------+
5 rows in set (0.00 sec)


-- 12)  Show the average marks per course

select c1.course_name , avg(g1.marks_obtained) as Average_marks from Grades g1 inner join Courses c1 on 
g1.course_id = c1.course_id group by c1.course_name;

-- OutPut
+---------------------------+---------------+
| course_name               | Average_marks |
+---------------------------+---------------+
| Python Programming        |       88.5000 |
| Data Structures           |       76.0000 |
| Database Systems          |       64.0000 |
| Computer Architecture     |       48.0000 |
| Operating Systems         |       88.0000 |
| Financial Accounting      |       68.0000 |
| Business Economics        |       91.0000 |
| Corporate Accounting      |       73.0000 |
| Business Law              |       42.0000 |
| Taxation                  |       67.0000 |
| Engineering Drawing       |       72.5000 |
| Basic Electronics         |       95.0000 |
| Computer Fundamentals     |       45.0000 |
| Technical Mathematics     |       78.0000 |
| Web Technology            |       52.0000 |
| Web Development           |       59.0000 |
| Computer Networks         |       38.0000 |
| Cyber Security            |       93.0000 |
| Cloud Computing           |       74.0000 |
| Software Engineering      |       61.0000 |
| Principles of Management  |       91.5000 |
| Marketing Management      |       57.0000 |
| Human Resource Management |       82.0000 |
| Business Communication    |       44.0000 |
| Entrepreneurship          |       72.0000 |
+---------------------------+---------------+
25 rows in set (0.00 sec)



-- 13) find the average attendance percentage of student

select  avg(Total_Percentage) as Total_Attendent
    from( 
        select Student_id,
        sum(
            case
              when status = "Present" then 1
              when status = "Late"  then 0.5
              else 0
            end 
        ) * 100.00 / count(*)
      as Total_Attendent
from Attendance
group by Student_id
) att;

-- output
+-----------------+
| Total_Attendent |
+-----------------+
|  78.33333333333 |
+-----------------+
1 row in set (0.00 sec)



--  14) find faculty have 1 then more course 
select f1.name , (
    select count(course_id) from 
    courses c1 where c1.faculty_id = f1.faculty_id
) Courses_Count from  Faculty f1 having Courses_Count > 1;

-- OutPut
+-------------+---------------+
| name        | Courses_Count |
+-------------+---------------+
| Amit Shah   |             2 |
| Neha Joshi  |             2 |
| Ravi Mehta  |             3 |
| Akash Mehta |             2 |
+-------------+---------------+
4 rows in set (0.00 sec)


-- 15) indentify student who have missed more than 10 classes
select *
from Students
where Student_id in (
    select Student_id
    from Attendance
    where status = 'Absent'
    group by  Student_id
    having COUNT(*) > 10
);

--OutPut
Empty set (0.00 sec)




-- 16) Indentify the highest and lowest marks obtained in each course

select c1.course_name , 
       max(g1.marks_obtained) as highest_marks ,
       min(g1.marks_obtained) as lowest_marks
from Grades g1 inner join Courses c1 on 
g1.course_id = c1.course_id group by c1.course_name;


-- output
+---------------------------+---------------+--------------+
| course_name               | highest_marks | lowest_marks |
+---------------------------+---------------+--------------+
| Python Programming        |            92 |           85 |
| Data Structures           |            76 |           76 |
| Database Systems          |            64 |           64 |
| Computer Architecture     |            48 |           48 |
| Operating Systems         |            88 |           88 |
| Financial Accounting      |            81 |           55 |
| Business Economics        |            91 |           91 |
| Corporate Accounting      |            73 |           73 |
| Business Law              |            42 |           42 |
| Taxation                  |            67 |           67 |
| Engineering Drawing       |            86 |           59 |
| Basic Electronics         |            95 |           95 |
| Computer Fundamentals     |            45 |           45 |
| Technical Mathematics     |            78 |           78 |
| Web Technology            |            52 |           52 |
| Web Development           |            69 |           49 |
| Computer Networks         |            38 |           38 |
| Cyber Security            |            93 |           93 |
| Cloud Computing           |            74 |           74 |
| Software Engineering      |            61 |           61 |
| Principles of Management  |            96 |           87 |
| Marketing Management      |            57 |           57 |
| Human Resource Management |            82 |           82 |
| Business Communication    |            44 |           44 |
| Entrepreneurship          |            72 |           72 |
+---------------------------+---------------+--------------+
25 rows in set (0.00 sec)



-- 17)  calculate the total number of student per department 

select d1.department_name , Count(distinct s1.Student_id) as Number_of_Student
from Students  s1 inner join Departments d1 on 
s1.department_id = d1.department_id group by d1.department_name;

-- OutPut
+-------------------------+-------------------+
| department_name         | Number_of_Student |
+-------------------------+-------------------+
| Business Administration |                 5 |
| Commerce                |                 7 |
| Computer Science        |                 7 |
| Diploma                 |                 6 |
| Information Technology  |                 7 |
+-------------------------+-------------------+
5 rows in set (0.00 sec)


-- 18) Retrieve student details along with their department using inner join 

select * from Students s1 inner join Departments d1 on
s1.department_id = d1.department_id;

-- OutPut

+------------+---------------+------------+--------+-------------------------+--------------+---------------+-----------------+---------------+---------------+-------------------------+
| Student_id | name          | dob        | gender | email                   | phone_number | address       | addmission_date | department_id | department_id | department_name         |
+------------+---------------+------------+--------+-------------------------+--------------+---------------+-----------------+---------------+---------------+-------------------------+
|          1 | Aarav Patel   | 2005-05-12 | Male   | aarav.patel@gmail.com   | 9876500001   | Rajkot        | 2024-06-15      |             1 |             1 | Computer Science        |
|          6 | Neha Joshi    | 2006-04-05 | Female | neha.joshi@gmail.com    | 9876500006   | Morbi         | 2024-06-17      |             1 |             1 | Computer Science        |
|         11 | Mansi Patel   | 2006-06-11 | Female | mansi.patel@gmail.com   | 9876500011   | Surendranagar | 2024-06-20      |             1 |             1 | Computer Science        |
|         16 | Khushi Mehta  | 2006-05-28 | Female | khushi.mehta@gmail.com  | 9876500016   | Rajkot        | 2024-06-22      |             1 |             1 | Computer Science        |
|         20 | Ananya Joshi  | 2006-09-12 | Female | ananya.joshi@gmail.com  | 9876500020   | Amreli        | 2024-06-24      |             1 |             1 | Computer Science        |
|         25 | Jay Patel     | 2006-01-09 | Male   | jay.patel@gmail.com     | 9876500025   | Rajkot        | 2024-06-27      |             1 |             1 | Computer Science        |
|         30 | Pooja Shah    | 2005-09-23 | Female | pooja.shah@gmail.com    | 9876500030   | Jamnagar      | 2024-06-29      |             1 |             1 | Computer Science        |
|          2 | Diya Shah     | 2006-02-20 | Female | diya.shah@gmail.com     | 9876500002   | Amreli        | 2024-06-15      |             2 |             2 | Commerce                |
|          7 | Vivaan Shah   | 2005-03-15 | Male   | vivaan.shah@gmail.com   | 9876500007   | Rajkot        | 2024-06-18      |             2 |             2 | Commerce                |
|         12 | Harsh Mehta   | 2005-10-08 | Male   | harsh.mehta@gmail.com   | 9876500012   | Jamnagar      | 2024-06-20      |             2 |             2 | Commerce                |
|         17 | Dhruv Shah    | 2005-02-13 | Male   | dhruv.shah@gmail.com    | 9876500017   | Morbi         | 2024-06-23      |             2 |             2 | Commerce                |
|         21 | Rahul Shah    | 2005-06-07 | Male   | rahul.shah@gmail.com    | 9876500021   | Gondal        | 2024-06-25      |             2 |             2 | Commerce                |
|         26 | Nisha Shah    | 2005-08-14 | Female | nisha.shah@gmail.com    | 9876500026   | Amreli        | 2024-06-27      |             2 |             2 | Commerce                |
|         34 | Meet Nakrani  | 2005-04-15 | Male   | Meet.Nakrani@gmail.com  | 9638745213   | Amreli        | 2024-07-01      |             2 |             2 | Commerce                |
|          3 | Rohan Mehta   | 2005-11-10 | Male   | rohan.mehta@gmail.com   | 9876500003   | Gondal        | 2024-06-16      |             3 |             3 | Diploma                 |
|          8 | Pinal Patel   | 2006-07-22 | Female | pinal.patel@gmail.com   | 9876500008   | Amreli        | 2024-06-18      |             3 |             3 | Diploma                 |
|         13 | Dev Joshi     | 2005-04-21 | Male   | dev.joshi11@gmail.com   | 9876500013   | Gondal        | 2024-06-21      |             3 |             3 | Diploma                 |
|         18 | Jiya Patel    | 2006-08-19 | Female | jiya.patel@gmail.com    | 9876500018   | Jamnagar      | 2024-06-23      |             3 |             3 | Diploma                 |
|         22 | Kavya Patel   | 2006-10-16 | Female | kavya.patel@gmail.com   | 9876500022   | Rajkot        | 2024-06-25      |             3 |             3 | Diploma                 |
|         27 | Akash Mehta   | 2006-02-26 | Male   | akash.mehta@gmail.com   | 9876500027   | Gondal        | 2024-06-28      |             3 |             3 | Diploma                 |
|          4 | Priya Patel   | 2006-01-18 | Female | priya.patel@gmail.com   | 9876500004   | Rajkot        | 2024-06-16      |             4 |             4 | Information Technology  |
|          9 | Sita Mehta    | 2005-12-30 | Female | sita.mehta@gmail.com    | 9876500009   | Gondal        | 2024-06-19      |             4 |             4 | Information Technology  |
|         14 | Riya Shah     | 2006-03-17 | Female | riya.shah@gmail.com     | 9876500014   | Amreli        | 2024-06-21      |             4 |             4 | Information Technology  |
|         19 | Aditya Sharma | 2005-01-25 | Male   | aditya.sharma@gmail.com | 9876500019   | Rajkot        | 2024-06-24      |             4 |             4 | Information Technology  |
|         23 | Sahil Mehta   | 2005-12-05 | Male   | sahil.mehta@gmail.com   | 9876500023   | Morbi         | 2024-06-26      |             4 |             4 | Information Technology  |
|         28 | Sneha Patel   | 2005-11-18 | Female | sneha.patel@gmail.com   | 9876500028   | Rajkot        | 2024-06-28      |             4 |             4 | Information Technology  |
|         35 | janu Pokiya   | 2005-11-11 | Female | janu.Pokiya@gmail.com   | 9630745213   | Rajkot        | 2024-07-02      |             4 |             4 | Information Technology  |
|          5 | Yash Solanki  | 2005-08-25 | Male   | yash.solanki@gmail.com  | 9876500005   | Jamnagar      | 2024-06-17      |             5 |             5 | Business Administration |
|         10 | Kunal Shah    | 2005-09-14 | Male   | kunal.shah@gmail.com    | 9876500010   | Rajkot        | 2024-06-19      |             5 |             5 | Business Administration |
|         15 | Manav Patel   | 2005-07-09 | Male   | manav.patel@gmail.com   | 9876500015   | Gondal        | 2024-06-22      |             5 |             5 | Business Administration |
|         24 | Ayesha Khan   | 2006-11-21 | Female | ayesha.khan@gmail.com   | 9876500024   | Jamnagar      | 2024-06-26      |             5 |             5 | Business Administration |
|         29 | Ravi Joshi    | 2006-04-30 | Male   | ravi.joshi@gmail.com    | 9876500029   | Morbi         | 2024-06-29      |             5 |             5 | Business Administration |
+------------+---------------+------------+--------+-------------------------+--------------+---------------+-----------------+---------------+---------------+-------------------------+
32 rows in set (0.00 sec)




-- 19) Get a list of student who have not endrolled in any course using left join 

select  s1.Student_id,
        s1.name
from   Students s1 left join  Enrollments e1 on 
s1.Student_id = e1.Student_id where
e1.course_id is null;

-- OutPut
+------------+--------------+
| Student_id | name         |
+------------+--------------+
|         34 | Meet Nakrani |
|         35 | janu Pokiya  |
+------------+--------------+
2 rows in set (0.00 sec)


-- 20) List courses that have no faculty assigned using right join 

select  c1.course_id,
        c1.course_name
from Faculty f1 right join Courses c1  on 
c1.faculty_id = f1.faculty_id where 
f1.faculty_id is null;


-- OutPut
Empty set (0.00 sec)


-- 21) Show student without grades using full outer join 

select s1.Student_id,
       s1.name 
from Grades g1 left join Students s1 on 
g1.Student_id = s1.Student_id 
where g1.grade_id is null
union
select s1.Student_id,
       s1.name from Grades g1 right join Students s1 on 
g1.Student_id = s1.Student_id 
where g1.grade_id is null;


-- OutPut
+------------+--------------+
| Student_id | name         |
+------------+--------------+
|         34 | Meet Nakrani |
|         35 | janu Pokiya  |
+------------+--------------+
2 rows in set (0.00 sec)


-- 22) Find student with marks above the average score

select Student_id , marks_obtained
from Grades g1 where marks_obtained > 
(
    select avg(marks_obtained) from Grades
) ;

-- output
+------------+----------------+
| Student_id | marks_obtained |
+------------+----------------+
|          1 |             92 |
|          2 |             85 |
|          3 |             76 |
|          6 |             88 |
|          8 |             91 |
|          9 |             73 |
|         12 |             81 |
|         14 |             95 |
|         16 |             78 |
|         18 |             86 |
|         21 |             93 |
|         22 |             74 |
|         25 |             87 |
|         27 |             82 |
|         29 |             72 |
|         30 |             96 |
+------------+----------------+
16 rows in set (0.00 sec)




-- 23) Extract the month form attendance_date to analyze attendance trends 
select attendance_date , month(attendance_date) as Months 
from Attendance;

-- OutPut
+-----------------+--------+
| attendance_date | Months |
+-----------------+--------+
| 2025-07-01      |      7 |
| 2025-07-01      |      7 |
| 2025-07-01      |      7 |
| 2025-07-01      |      7 |
| 2025-07-01      |      7 |
| 2025-07-02      |      7 |
| 2025-07-02      |      7 |
| 2025-07-02      |      7 |
| 2025-07-02      |      7 |
| 2025-07-02      |      7 |
| 2025-07-03      |      7 |
| 2025-07-03      |      7 |
| 2025-07-03      |      7 |
| 2025-07-03      |      7 |
| 2025-07-03      |      7 |
| 2025-07-04      |      7 |
| 2025-07-04      |      7 |
| 2025-07-04      |      7 |
| 2025-07-04      |      7 |
| 2025-07-04      |      7 |
| 2025-07-05      |      7 |
| 2025-07-05      |      7 |
| 2025-07-05      |      7 |
| 2025-07-05      |      7 |
| 2025-07-05      |      7 |
| 2025-07-06      |      7 |
| 2025-07-06      |      7 |
| 2025-07-06      |      7 |
| 2025-07-06      |      7 |
| 2025-07-06      |      7 |
| 2025-07-02      |      7 |
| 2025-07-02      |      7 |
| 2025-07-02      |      7 |
| 2025-07-02      |      7 |
| 2025-07-02      |      7 |
| 2025-07-03      |      7 |
| 2025-07-03      |      7 |
| 2025-07-03      |      7 |
| 2025-07-03      |      7 |
| 2025-07-03      |      7 |
| 2025-07-04      |      7 |
| 2025-07-04      |      7 |
| 2025-07-04      |      7 |
| 2025-07-04      |      7 |
| 2025-07-04      |      7 |
| 2025-07-05      |      7 |
| 2025-07-05      |      7 |
| 2025-07-05      |      7 |
| 2025-07-05      |      7 |
| 2025-07-05      |      7 |
| 2025-07-06      |      7 |
| 2025-07-06      |      7 |
| 2025-07-06      |      7 |
| 2025-07-06      |      7 |
| 2025-07-06      |      7 |
| 2025-07-07      |      7 |
| 2025-07-07      |      7 |
| 2025-07-07      |      7 |
| 2025-07-07      |      7 |
| 2025-07-07      |      7 |
+-----------------+--------+
60 rows in set (0.00 sec)


-- 24) Calculate the number of year since a student's admission 

select Student_id,
     timestampdiff(year, addmission_date, CURDATE()) AS years_since_admission
from Students;

-- OutPut
+------------+-----------------------+
| Student_id | years_since_admission |
+------------+-----------------------+
|          1 |     2                 |
|          2 |     2                 |
|          3 |     2                 |
|          4 |     2                 |
|          5 |     2                 |
|          6 |     2                 |
|          7 |     2                 |
|          8 |     2                 |
|          9 |     2                 |
|         10 |     2                 |
|         11 |     2                 |
|         12 |     2                 |
|         13 |     2                 |
|         14 |     2                 |
|         15 |     2                 |
|         16 |     2                 |
|         17 |     2                 |
|         18 |     2                 |
|         19 |     2                 |
|         20 |     2                 |
|         21 |     2                 |
|         22 |     2                 |
|         23 |     2                 |
|         24 |     2                 |
|         25 |     2                 |
|         26 |     2                 |
|         27 |     2                 |
|         28 |     2                 |
|         29 |     2                 |
|         30 |     2                 |
|         34 |     2                 |
|         35 |     2                 |
+------------+-----------------------+
32 rows in set (0.00 sec)


-- 25) Format attendance_date as DD-MM-YYYY   

select attendance_date , date_format(attendance_date,'%d-%m-%Y') as Date_Format_change
from Attendance;

-- OutPut
+-----------------+--------------------+
| attendance_date | Date_Format_change |
+-----------------+--------------------+
| 2025-07-01      | 01-07-2025         |
| 2025-07-01      | 01-07-2025         |
| 2025-07-01      | 01-07-2025         |
| 2025-07-01      | 01-07-2025         |
| 2025-07-01      | 01-07-2025         |
| 2025-07-02      | 02-07-2025         |
| 2025-07-02      | 02-07-2025         |
| 2025-07-02      | 02-07-2025         |
| 2025-07-02      | 02-07-2025         |
| 2025-07-02      | 02-07-2025         |
| 2025-07-03      | 03-07-2025         |
| 2025-07-03      | 03-07-2025         |
| 2025-07-03      | 03-07-2025         |
| 2025-07-03      | 03-07-2025         |
| 2025-07-03      | 03-07-2025         |
| 2025-07-04      | 04-07-2025         |
| 2025-07-04      | 04-07-2025         |
| 2025-07-04      | 04-07-2025         |
| 2025-07-04      | 04-07-2025         |
| 2025-07-04      | 04-07-2025         |
| 2025-07-05      | 05-07-2025         |
| 2025-07-05      | 05-07-2025         |
| 2025-07-05      | 05-07-2025         |
| 2025-07-05      | 05-07-2025         |
| 2025-07-05      | 05-07-2025         |
| 2025-07-06      | 06-07-2025         |
| 2025-07-06      | 06-07-2025         |
| 2025-07-06      | 06-07-2025         |
| 2025-07-06      | 06-07-2025         |
| 2025-07-06      | 06-07-2025         |
| 2025-07-02      | 02-07-2025         |
| 2025-07-02      | 02-07-2025         |
| 2025-07-02      | 02-07-2025         |
| 2025-07-02      | 02-07-2025         |
| 2025-07-02      | 02-07-2025         |
| 2025-07-03      | 03-07-2025         |
| 2025-07-03      | 03-07-2025         |
| 2025-07-03      | 03-07-2025         |
| 2025-07-03      | 03-07-2025         |
| 2025-07-03      | 03-07-2025         |
| 2025-07-04      | 04-07-2025         |
| 2025-07-04      | 04-07-2025         |
| 2025-07-04      | 04-07-2025         |
| 2025-07-04      | 04-07-2025         |
| 2025-07-04      | 04-07-2025         |
| 2025-07-05      | 05-07-2025         |
| 2025-07-05      | 05-07-2025         |
| 2025-07-05      | 05-07-2025         |
| 2025-07-05      | 05-07-2025         |
| 2025-07-05      | 05-07-2025         |
| 2025-07-06      | 06-07-2025         |
| 2025-07-06      | 06-07-2025         |
| 2025-07-06      | 06-07-2025         |
| 2025-07-06      | 06-07-2025         |
| 2025-07-06      | 06-07-2025         |
| 2025-07-07      | 07-07-2025         |
| 2025-07-07      | 07-07-2025         |
| 2025-07-07      | 07-07-2025         |
| 2025-07-07      | 07-07-2025         |
| 2025-07-07      | 07-07-2025         |
+-----------------+--------------------+
60 rows in set (0.00 sec)


-- 26) Convert all facultry names to uppercase

select name , upper(name)
from Faculty;

-- OutPut

+---------------+---------------+
| name          | upper(name)   |
+---------------+---------------+
| Rahul Sharma  | RAHUL SHARMA  |
| Priya Patel   | PRIYA PATEL   |
| Amit Shah     | AMIT SHAH     |
| Neha Joshi    | NEHA JOSHI    |
| Ravi Mehta    | RAVI MEHTA    |
| Pooja Shah    | POOJA SHAH    |
| Kiran Patel   | KIRAN PATEL   |
| Meera Joshi   | MEERA JOSHI   |
| Vikas Patel   | VIKAS PATEL   |
| Anjali Shah   | ANJALI SHAH   |
| Suresh Mehta  | SURESH MEHTA  |
| Komal Joshi   | KOMAL JOSHI   |
| Raj Shah      | RAJ SHAH      |
| Nisha Patel   | NISHA PATEL   |
| Harsh Mehta   | HARSH MEHTA   |
| Sneha Joshi   | SNEHA JOSHI   |
| Dhruv Patel   | DHRUV PATEL   |
| Mansi Shah    | MANSI SHAH    |
| Akash Mehta   | AKASH MEHTA   |
| Rina Patel    | RINA PATEL    |
| Dhruv joshi   | DHRUV JOSHI   |
| Mansi Sangani | MANSI SANGANI |
| Akash sakhiya | AKASH SAKHIYA |
| Rina selani   | RINA SELANI   |
| Dev Patel     | DEV PATEL     |
+---------------+---------------+
25 rows in set (0.00 sec)


-- 27) Trim unnecessary spaces from student names

select name , trim(name) as remove_space 
from Students;

-- OutPut

+---------------+---------------+
| name          | remove_space  |
+---------------+---------------+
| Aarav Patel   | Aarav Patel   |
| Diya Shah     | Diya Shah     |
| Rohan Mehta   | Rohan Mehta   |
| Priya Patel   | Priya Patel   |
| Yash Solanki  | Yash Solanki  |
| Neha Joshi    | Neha Joshi    |
| Vivaan Shah   | Vivaan Shah   |
| Pinal Patel   | Pinal Patel   |
| Sita Mehta    | Sita Mehta    |
| Kunal Shah    | Kunal Shah    |
| Mansi Patel   | Mansi Patel   |
| Harsh Mehta   | Harsh Mehta   |
| Dev Joshi     | Dev Joshi     |
| Riya Shah     | Riya Shah     |
| Manav Patel   | Manav Patel   |
| Khushi Mehta  | Khushi Mehta  |
| Dhruv Shah    | Dhruv Shah    |
| Jiya Patel    | Jiya Patel    |
| Aditya Sharma | Aditya Sharma |
| Ananya Joshi  | Ananya Joshi  |
| Rahul Shah    | Rahul Shah    |
| Kavya Patel   | Kavya Patel   |
| Sahil Mehta   | Sahil Mehta   |
| Ayesha Khan   | Ayesha Khan   |
| Jay Patel     | Jay Patel     |
| Nisha Shah    | Nisha Shah    |
| Akash Mehta   | Akash Mehta   |
| Sneha Patel   | Sneha Patel   |
| Ravi Joshi    | Ravi Joshi    |
| Pooja Shah    | Pooja Shah    |
| Meet Nakrani  | Meet Nakrani  |
| janu Pokiya   | janu Pokiya   |
+---------------+---------------+
32 rows in set (0.00 sec)


-- 28) Replace NULL email fields with "Email Not Provided"

UPDATE Students
SET email = 'Email Not Provided'
WHERE email IS NULL;

-- OutPut
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0




-- 29) Rank student based on their overall marks

select Student_id,
       marks_obtained,
       dense_rank() over(order by marks_obtained desc) as Ranking 
from Grades;

-- OutPut
+------------+----------------+---------+
| Student_id | marks_obtained | Ranking |
+------------+----------------+---------+
|         30 |             96 |       1 |
|         14 |             95 |       2 |
|         21 |             93 |       3 |
|          1 |             92 |       4 |
|          8 |             91 |       5 |
|          6 |             88 |       6 |
|         25 |             87 |       7 |
|         18 |             86 |       8 |
|          2 |             85 |       9 |
|         27 |             82 |      10 |
|         12 |             81 |      11 |
|         16 |             78 |      12 |
|          3 |             76 |      13 |
|         22 |             74 |      14 |
|          9 |             73 |      15 |
|         29 |             72 |      16 |
|         19 |             69 |      17 |
|         11 |             67 |      18 |
|          4 |             64 |      19 |
|         23 |             61 |      20 |
|         13 |             59 |      21 |
|         26 |             57 |      22 |
|          7 |             55 |      23 |
|         17 |             52 |      24 |
|         24 |             49 |      25 |
|          5 |             48 |      26 |
|         15 |             45 |      27 |
|         28 |             44 |      28 |
|         10 |             42 |      29 |
|         20 |             38 |      30 |
+------------+----------------+---------+
30 rows in set (0.00 sec)


-- 30) show the cumulative attendance percentage per course

select course_id,
       Number_attendance,
       round(
       sum(Number_attendance) over(order by  course_id ) * 100 / sum(Number_attendance) over() 
       , 2) as Cumulative_Percentage
from( 
    select
        course_id,
        count(*) as Number_attendance
    from Attendance
    where status = "Present"
    group by course_id 
) att order by course_id ;

-- OutPut
+-----------+-------------------+-----------------------+
| course_id | Number_attendance | Cumulative_Percentage |
+-----------+-------------------+-----------------------+
|       201 |                 3 |                  7.32 |
|       202 |                 2 |                 12.20 |
|       204 |                 2 |                 17.07 |
|       205 |                 2 |                 21.95 |
|       206 |                 2 |                 26.83 |
|       207 |                 2 |                 31.71 |
|       209 |                 2 |                 36.59 |
|       210 |                 2 |                 41.46 |
|       211 |                 4 |                 51.22 |
|       213 |                 2 |                 56.10 |
|       214 |                 2 |                 60.98 |
|       215 |                 1 |                 63.41 |
|       217 |                 2 |                 68.29 |
|       218 |                 2 |                 73.17 |
|       219 |                 1 |                 75.61 |
|       220 |                 2 |                 80.49 |
|       221 |                 3 |                 87.80 |
|       223 |                 2 |                 92.68 |
|       224 |                 1 |                 95.12 |
|       225 |                 2 |                100.00 |
+-----------+-------------------+-----------------------+
20 rows in set (0.00 sec)


-- 31) Dispaly the running total of students enrolled per month

select Months,
       total,
       sum(total) over(order by Months) as running
from(
    select  month(enrollment_date) as Months , count(distinct Student_id) as total
    from Enrollments
    group by Months 
) tem ;

-- outPut
+--------+-------+---------+
| Months | total | running |
+--------+-------+---------+
|      6 |    29 |      29 |
|      7 |     1 |      30 |
+--------+-------+---------+
2 rows in set (0.00 sec)




-- 32)  Assing student performance level(
--  "Excellent" if marks_obtained > 90
--  "Good" if marks_obtained between 75 and 90
--  "Needs Improvement" otherwise 
--)

select Student_id,
       marks_obtained,
       case
          when marks_obtained > 90 then "Excellent"
          when marks_obtained between 75 and 90 then "Good"
          else "Needs Improvement" 
       end performance 
from Grades;

-- OutPut

+------------+----------------+-------------------+
| Student_id | marks_obtained | performance       |
+------------+----------------+-------------------+
|          1 |             92 | Excellent         |
|          2 |             85 | Good              |
|          3 |             76 | Good              |
|          4 |             64 | Needs Improvement |
|          5 |             48 | Needs Improvement |
|          6 |             88 | Good              |
|          7 |             55 | Needs Improvement |
|          8 |             91 | Excellent         |
|          9 |             73 | Needs Improvement |
|         10 |             42 | Needs Improvement |
|         11 |             67 | Needs Improvement |
|         12 |             81 | Good              |
|         13 |             59 | Needs Improvement |
|         14 |             95 | Excellent         |
|         15 |             45 | Needs Improvement |
|         16 |             78 | Good              |
|         17 |             52 | Needs Improvement |
|         18 |             86 | Good              |
|         19 |             69 | Needs Improvement |
|         20 |             38 | Needs Improvement |
|         21 |             93 | Excellent         |
|         22 |             74 | Needs Improvement |
|         23 |             61 | Needs Improvement |
|         24 |             49 | Needs Improvement |
|         25 |             87 | Good              |
|         26 |             57 | Needs Improvement |
|         27 |             82 | Good              |
|         28 |             44 | Needs Improvement |
|         29 |             72 | Needs Improvement |
|         30 |             96 | Excellent         |
+------------+----------------+-------------------+
30 rows in set (0.00 sec)



--  33) Categorize attendance records
-- "Regular" for attendance above 80%
-- "Irregular" for attendance between 50% and 80%
-- "Defaulter" otherwise

select * ,
       case 
        when Total_Attendance > 80 then "Regular"
        when Total_Attendance between 50 and 80 then "Irregular"
        else "Defaulter"
       end Categorize
from (
        select Student_id,
       count(*) as total_day ,
       round(
        sum(
            case
              when status = "Present" then 1
              when status = "Late"  then 0.5
              else 0
            end 
        ) * 100.00 / count(*)
       ,2) as Total_Attendance
        from Attendance
        group by Student_id
) temp ;

-- output
+------------+-----------+------------------+------------+
| Student_id | total_day | Total_Attendance | Categorize |
+------------+-----------+------------------+------------+
|          1 |         2 |           100.00 | Regular    |
|          2 |         2 |            50.00 | Irregular  |
|          3 |         2 |           100.00 | Regular    |
|          4 |         2 |            50.00 | Irregular  |
|          5 |         2 |           100.00 | Regular    |
|          6 |         2 |           100.00 | Regular    |
|          7 |         2 |            50.00 | Irregular  |
|          8 |         2 |           100.00 | Regular    |
|          9 |         2 |            50.00 | Irregular  |
|         10 |         2 |           100.00 | Regular    |
|         11 |         2 |           100.00 | Regular    |
|         12 |         2 |            50.00 | Irregular  |
|         13 |         2 |           100.00 | Regular    |
|         14 |         2 |            50.00 | Irregular  |
|         15 |         2 |           100.00 | Regular    |
|         16 |         2 |           100.00 | Regular    |
|         17 |         2 |            50.00 | Irregular  |
|         18 |         2 |           100.00 | Regular    |
|         19 |         2 |            50.00 | Irregular  |
|         20 |         2 |           100.00 | Regular    |
|         21 |         2 |           100.00 | Regular    |
|         22 |         2 |            50.00 | Irregular  |
|         23 |         2 |           100.00 | Regular    |
|         24 |         2 |            50.00 | Irregular  |
|         25 |         2 |           100.00 | Regular    |
|         26 |         2 |            25.00 | Defaulter  |
|         27 |         2 |           100.00 | Regular    |
|         28 |         2 |            75.00 | Irregular  |
|         29 |         2 |           100.00 | Regular    |
|         30 |         2 |            50.00 | Irregular  |
+------------+-----------+------------------+------------+
30 rows in set (0.00 sec)


