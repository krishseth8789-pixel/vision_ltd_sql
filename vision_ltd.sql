CREATE DATABASE IF NOT EXISTS vision_ltd;
USE vision_ltd;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    manager_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),
    joining_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments VALUES
(1, 'Finance', 'Rahul Sharma'),
(2, 'IT', 'Priya Mehta');

INSERT INTO employees VALUES
(101, 'Aarav Singh', 1, 45000, '2024-06-10'),
(102, 'Ananya Rao', 2, 60000, '2023-08-15');