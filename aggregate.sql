USE employee_db;

CREATE TABLE employee (
    id INT PRIMARY KEY, 
	name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10,2),
    experience INT
);

INSERT INTO employee (id, name, department, salary, experience) VALUES
(1, 'john', 'IT', 50000, 2);

INSERT INTO employee (id, name, department, salary, experience) VALUES
(2, 'jack', 'IT', 60000, 3);

INSERT INTO employee (id, name, department, salary, experience) VALUES
(3, 'hema', 'HR', 50000, 3);

INSERT INTO employee (id, name, department, salary, experience) VALUES
(4, 'usha', 'Accounts', 40000, 2);

INSERT INTO employee (id, name, department, salary, experience) VALUES
(5, 'anusha', 'IT', 70000, 5);

INSERT INTO employee (id, name, department, salary, experience) VALUES
(6, 'venkat', 'IT', 90000, 4);

INSERT INTO employee (id, name, department, salary, experience) VALUES
(7, 'subbu', 'IT', 60000, 2);

INSERT INTO employee (id, name, department, salary, experience) VALUES
(8, 'rao', 'HR', 50000, 3);

SELECT * FROM employee;

SELECT department, SUM(salary) AS total_salary
FROM employee
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department;

SELECT department, COUNT(*) AS total_employees
FROM employee
GROUP BY department;

SELECT department, COUNT(*) AS emp_count
FROM employee
GROUP BY department
HAVING COUNT(*) > 1;

SELECT department, MAX(salary) AS highest_salary
FROM employee
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 60000;

SELECT COUNT(DISTINCT department) AS total_departments
FROM employee;

SELECT department , ROUND(AVG(salary), 2) AS avg_salary
FROM employee
GROUP BY department;

SELECT COUNT(salary) AS total_salry
FROM employee;


INSERT INTO employee (id, name, department, salary) VALUES
(9, 'David', 'IT', NULL);

SELECT COUNT(salary) AS total_salry
FROM employee
GROUP BY department;

SELECT name, COUNT(salary) AS total_salary
FROM employee
GROUP BY name;

SELECT  COUNT(salary) AS total_salary
FROM employee;














