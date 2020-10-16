CREATE TABLE mentors
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    years_in_Glasgow INT NOT NULL,
    address VARCHAR(120) NULL,
    favourite_P_L VARCHAR(60) NULL
);
CREATE TABLE students
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    address VARCHAR(120) NULL,
    graduated BOOLEAN NULL
);
CREATE TABLE classes
(
    id SERIAL PRIMARY KEY,
    mentor VARCHAR(50) NOT NULL,
    topic VARCHAR(50) NOT NULL,
    class_start DATE NULL,
    class_end DATE NULL,
    location VARCHAR(40) NULL
);

CREATE TABLE attendance
(
    id SERIAL PRIMARY KEY,
    class_id INT REFERENCES classes(id) NOT NULL,
    students_id INT REFERENCES students(id) NOT NULL,
    topic VARCHAR(120) NOT NULL
);
