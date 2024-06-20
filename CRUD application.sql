-- Create the database
CREATE DATABASE employee_management;

-- Use the database
USE employee_management;

-- Create the employees table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- Insert sample data
INSERT INTO employees (first_name, last_name, department, position, salary, hire_date)
VALUES
    ('John', 'Doe', 'IT', 'Developer', 60000, '2018-03-01'),
    ('Jane', 'Smith', 'HR', 'Manager', 75000, '2017-07-10'),
    ('Emily', 'Jones', 'Marketing', 'Analyst', 50000, '2019-11-05'),
    ('Michael', 'Brown', 'Sales', 'Sales Manager', 85000, '2016-04-15'),
    ('Chris', 'Davis', 'IT', 'Developer', 62000, '2019-02-12'),
    ('Jessica', 'Wilson', 'Finance', 'Accountant', 67000, '2017-06-22'),
    ('Employee999', 'Lastname999', 'DepartmentX', 'PositionX', 75000, '2020-01-01'),
    ('Employee1000', 'Lastname1000', 'DepartmentY', 'PositionY', 80000, '2021-01-01');

-- Select all employees
SELECT * FROM employees;

-- Select specific columns
SELECT first_name, last_name, department FROM employees;

-- Select employees with a specific condition
SELECT * FROM employees WHERE department = 'IT';

-- Update an employee's salary
UPDATE employees
SET salary = 80000
WHERE id = 2;

-- Update an employee's department
UPDATE employees
SET department = 'Sales'
WHERE id = 3;

-- Delete an employee by ID
DELETE FROM employees
WHERE id = 1;

-- Delete employees from a specific department
DELETE FROM employees
WHERE department = 'HR';

-- Create a view for high salary employees
CREATE VIEW high_salary_employees AS
SELECT first_name, last_name, salary
FROM employees
WHERE salary > 70000;

-- Use the view
SELECT * FROM high_salary_employees;
