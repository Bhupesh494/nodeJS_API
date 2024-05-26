-- Create database
CREATE DATABASE IF NOT EXISTS studentDB;

-- Use the database
USE studentDB;

-- Create students table
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Create courses table
CREATE TABLE IF NOT EXISTS courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- Create enrollments table to represent many-to-many relationship between students and courses
CREATE TABLE IF NOT EXISTS enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

-- Insert dummy data into students table
INSERT INTO students (name, age, email) VALUES
('John Doe', 20, 'john.doe@example.com'),
('Jane Smith', 22, 'jane.smith@example.com'),
('Alice Johnson', 19, 'alice.johnson@example.com');

-- Insert dummy data into courses table
INSERT INTO courses (name, description) VALUES
('Mathematics', 'An introduction to mathematical concepts'),
('Physics', 'Fundamentals of Physics'),
('Chemistry', 'Basics of Chemistry');

-- Insert dummy data into enrollments table
INSERT INTO enrollments (student_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 3);

select * from students;