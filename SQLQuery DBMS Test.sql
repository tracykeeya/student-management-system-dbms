---CREATE DATABASE student_management_system;
---USE student_management_system;

CREATE TABLE student(
student_id INT PRIMARY KEY,
first_name VARCHAR(20),
last_name VARCHAR(20),
email VARCHAR(50) UNIQUE,
date_of_birth DATE
);

---DROP TABLE student

INSERT INTO student(student_id,first_name,last_name, email,date_of_birth)
VALUES
(1,'Tracy','Keeya','keyatracy@gail.com','2002-07-29'),
(2,'Sarah', 'Kim', 'sarah@gmail.com', '2001-03-21'),
(3,'Trust', 'Kimera','kim@gmail.com', '2003-03-11'),
(4,'Vanny', 'Muwa', 'vannym@gmail.com', '2004-07-02'),
(5,'Vicent', 'Muwanguzi', 'vicent@gmail.com', '2008-08-27'),
(6,'Lilian', 'Kim', 'Lillian@gmail.com', '2001-03-21'),
(7,'Pash', 'Kim', 'Pash@gmail.com', '2001-03-21'),
(8,'Pesh', 'Kim', 'Pesh@gmail.com', '2001-09-21'),
(9,'Patience', 'Kim', 'pt@gmail.com', '2001-03-21'),
(10,'Ruth', 'Kim', 'Ruth@gmail.com', '2001-03-25'),
(11,'Essy', 'Kim', 'Essy@gmail.com', '2001-03-21'),
(12,'Esther', 'Kim', 'esther@gmail.com', '2009-05-04'),
(13,'John', 'Kim', 'sah@gmail.com', '2001-03-21'),
(14,'Joel', 'Kingundu', 'joelh@gmail.com', '2007-03-21'),
(15,'Jonathan', 'Bogere', 'bogerej@gmail.com', '1999-06-21'),
(16,'Jordan', 'Lastton', 'rah@gmail.com', '2001-03-21'),
(17,'Justine', 'Mukebo', 'ah@gmail.com', '2001-09-21'),
(18,'Joseph', 'Mrk', 'aveh@gmail.com', '2001-03-21'),
(19,'Joy', 'Tendo', 'tendo@gmail.com', '2001-03-21'),
(20,'Joce', 'Kimberly', 'kimberly@gmail.com', '2006-03-26');

SELECT * FROM student


---WHERE CLAUSE
SELECT * FROM student
WHERE first_name = 'Patience'


--- ORDER BY
SELECT * FROM student
ORDER BY first_name ASC;


--COUNT
SELECT COUNT(*) As tota_students
FROM student;


---SUM
SELECT SUM(student_id) As total_student_ids
FROM student


---AVG
SELECT AVG(student_id) AS average_student_id
FROM student;



---UPDATE
UPDATE student
SET email = 'tracy2@gmailcom'
WHERE student_id = 1;

SELECT * FROM student
WHERE student_id = 1;

CREATE TABLE lecturer(
lecturer_id INT PRIMARY KEY,
lecturer_name VARCHAR(20),
email VARCHAR(50),
specialization VARCHAR(50)
);


INSERT INTO lecturer(lecturer_id, lecturer_name, email, specialization)
VALUES
(1, 'Dr. James', 'james@gmail.com', 'Database Systems'),
(2, 'Ms. Sarah', 'sarahlect@gmail.com', 'Web Development'),
(3, 'Mr. Peter', 'peter@gmail.com', 'Networking'),
(4, 'Dr. Grace', 'grace@gmail.com', 'Cyber Security'),
(5, 'Mr. John', 'johnlect@gmail.com', 'Artificial Intelligence'),
(6, 'Ms. Ruth', 'ruth@gmail.com', 'Software Engineering'),
(7, 'Dr. Kevin', 'kevin@gmail.com', 'Data Science'),
(8, 'Mr. Brian', 'brian@gmail.com', 'Computer Graphics'),
(9, 'Ms. Esther', 'estherlect@gmail.com', 'Programming'),
(10, 'Mr.. Daniel', 'daniel@gmail.com', 'Enterpreneurship');


SELECT * FROM lecturer

SELECT * FROM lecturer
WHERE lecturer_id = 2


CREATE TABLE course(
course_id INT PRIMARY KEY,
course_name VARCHAR(50),
description TEXT,
lecturer_id INT,
FOREIGN KEY (lecturer_id)
REFERENCES Lecturer(lecturer_id)
);



INSERT INTO course(course_id, course_name, description, lecturer_id)
VALUES
(1, 'Database Systems', 'Introduction to database design and management', 1),
(2, 'Web Development', 'Development of websites and web applications', 2),
(3, 'Computer Networking', 'Study of computer networks and communication', 3),
(4, 'Cyber Security', 'Protection of systems and networks from attacks', 4),
(5, 'Artificial Intelligence', 'Introduction to AI concepts and applications', 5),
(6, 'Software Engineering', 'Software development processes and methodologies', 6),
(7, 'Data Science', 'Analysis and interpretation of data', 7),
(8, 'Computer Graphics', 'Design and manipulation of digital graphics', 8),
(9, 'Programming Fundamentals', 'Basics of computer programming', 9),
(10, 'Information Systems', 'Management of information systems in organizations', 10),
(11, 'Mobile Application Development', 'Design and development of mobile apps', 2),
(12, 'Operating Systems', 'Study of operating system concepts', 1),
(13, 'Cloud Computing', 'Introduction to cloud technologies', 3),
(14, 'Machine Learning', 'Machine learning algorithms and models', 5),
(15, 'Human Computer Interaction', 'Interaction between humans and computers', 6),
(16, 'Computer Maintenance', 'Maintenance and troubleshooting of computers', 4),
(17, 'Data Structures', 'Organization and storage of data structures', 9),
(18, 'Systems Analysis', 'Analysis and design of information systems', 10),
(19, 'Internet Technology', 'Concepts of internet and web technologies', 2),
(20, 'Project Management', 'Planning and management of IT projects', 6);


SELECT * FROM course;

SELECT * FROM course
ORDER BY course_name DESC;


CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id)
    REFERENCES Student(student_id),
    FOREIGN KEY (course_id)
    REFERENCES Course(course_id)
);


INSERT INTO Enrollment(enrollment_id, student_id, course_id, enrollment_date)
VALUES
(1, 1, 1, '2025-01-10'),
(2, 2, 2, '2025-01-11'),
(3, 3, 3, '2024-01-12'),
(4, 4, 4, '2023-01-13'),
(5, 5, 5, '2026-01-14'),
(6, 6, 6, '2022-01-15'),
(7, 7, 7, '2026-01-16'),
(8, 8, 8, '2020-01-17'),
(9, 9, 9, '2026-01-18'),
(10, 10, 10, '2022-01-19'),
(11, 11, 11, '2026-01-20'),
(12, 12, 12, '2024-01-21'),
(13, 13, 13, '2026-01-22'),
(14, 14, 14, '2023-01-23'),
(15, 15, 15, '2021-01-24'),
(16, 16, 16, '2026-01-25'),
(17, 17, 17, '2022-01-26'),
(18, 18, 18, '2025-01-27'),
(19, 19, 19, '2026-01-28'),
(20, 20, 20, '2025-01-29');

SELECT * FROM Enrollment;


CREATE TABLE Assignment (
    assignment_id INT PRIMARY KEY,
    course_id INT,
    assignment_name VARCHAR(100),
    due_date DATE,
    FOREIGN KEY (course_id)
    REFERENCES Course(course_id)
);


INSERT INTO Assignment(assignment_id, course_id, assignment_name, due_date)
VALUES
(1, 1, 'Database Design Assignment', '2026-02-10'),
(2, 2, 'Website Development Project', '2026-02-11'),
(3, 3, 'Networking Practical', '2026-02-12'),
(4, 4, 'Cyber Security Report', '2026-02-13'),
(5, 5, 'AI Research Paper', '2026-02-14'),
(6, 6, 'Software Engineering Documentation', '2026-02-15'),
(7, 7, 'Data Analysis Assignment', '2026-02-16'),
(8, 8, 'Graphics Design Task', '2026-02-17'),
(9, 9, 'Programming Exercise', '2026-02-18'),
(10, 10, 'Information Systems Report', '2026-02-19'),
(11, 11, 'Mobile App Interface Design', '2026-02-20'),
(12, 12, 'Operating Systems Practical', '2026-02-21'),
(13, 13, 'Cloud Computing Research', '2026-02-22'),
(14, 14, 'Machine Learning Model', '2026-02-23'),
(15, 15, 'HCI User Interface Evaluation', '2026-02-24'),
(16, 16, 'Computer Maintenance Task', '2026-02-25'),
(17, 17, 'Data Structures Coding Task', '2026-02-26'),
(18, 18, 'Systems Analysis Documentation', '2026-02-27'),
(19, 19, 'Internet Technology Assignment', '2026-02-28'),
(20, 20, 'Project Planning Report', '2026-03-01');


SELECT * FROM Assignment;




---INNER JOIN

SELECT student.first_name,
       student.last_name,
       course.course_name,
       enrollment.enrollment_date
FROM enrollment
INNER JOIN student
ON enrollment.student_id = student.student_id
INNER JOIN course
ON enrollment.course_id = course.course_id;


---CREATING A VIEW

CREATE VIEW student_course_view AS
SELECT student.first_name,
       student.last_name,
       course.course_name
FROM enrollment
INNER JOIN student
ON enrollment.student_id = student.student_id
INNER JOIN course
ON enrollment.course_id = course.course_id;

SELECT * FROM student_course_view;