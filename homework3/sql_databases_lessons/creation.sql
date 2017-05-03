CREATE TABLE students (
  name text,
  year text,
  student_id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE courses (
  course_name text,
  course_id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE scores (
  student_id int NOT NULL,
  course_id int NOT NULL,
  score int NOT NULL,
  FOREIGN KEY (student_id) REFERENCES students(id),
  FOREIGN KEY (course_id) REFERENCES courses(id)
);

INSERT INTO students(name, year) VALUES
  ("P. Kozyrev", 2016),
  ("P. Kozyulina", 2016),
  ("I. Pavlov", 2016),
  ("M. Papkov", 2016),
  ("D. Kondinskaya", 2016),
  ("Y. Barbitov", 2015),
  ("M. Parr", 2015),
  ("O. Shchepin", 2015),
  ("V. Kuzyk", 2015),
  ("A. Zaharova", 2015),
  ("E. Jivkoplyas", 2015),
  ("L. Savochkina", 2014),
  ("N. Shilyaev", 2014),
  ("I. Korvigo", 2014);

INSERT INTO courses(course_name) VALUES
  ("Python"),
  ("Discrete Math"),
  ("R");

INSERT INTO scores VALUES
  (1, 1, 3), (1, 2, 3), (1, 3, 4),
  (2, 1, 5), (2, 2, 3), (2, 3, 3),
  (3, 1, 5), (3, 2, 5), (3, 3, 5),
  (4, 1, 4), (4, 2, 5), (4, 3, 4),
  (5, 1, 4), (5, 2, 3), (5, 3, 5),
  (6, 1, 4), (6, 2, 4), (6, 3, 5),
  (7, 1, 4), (7, 2, 5), (7, 3, 5),
  (8, 1, 5), (8, 2, 4), (8, 3, 3),
  (9, 1, 5), (9, 2, 3), (9, 3, 3),
  (10, 1, 4), (10, 2, 5), (10, 3, 4),
  (11, 1, 5), (11, 2, 3), (11, 3, 3),
  (12, 1, 3), (12, 2, 4), (12, 3, 5),
  (13, 1, 4), (13, 2, 3), (13, 3, 4),
  (14, 1, 5), (14, 2, 5), (14, 3, 5);