SQL Commands:
1.	Query to select all columns and rows from the employees table:
SELECT * FROM employees;
---Explanation: This query selects all the columns and rows from the employees table.
2.	Query to select only the name and salary columns of all employees with a salary greater than 50000:
SELECT name, salary FROM employees WHERE salary > 50000;
---Explanation: This query selects the name and salary columns from the employees table where the salary is greater than 50000.
3.	Query to calculate the average salary of all employees:
SELECT AVG(salary) FROM employees;
---Explanation: This query calculates the average salary of all employees from the employees table.
4.	Query to count the number of employees who work in the "Marketing" department:
SELECT COUNT(*) FROM employees WHERE department_id = (SELECT id FROM departments WHERE name = 'Marketing');
---Explanation: This query counts the number of employees who work in the "Marketing" department by using a subquery to retrieve the department ID for the "Marketing" department.
5.	Query to update the salary column of the employee with an id of 1001 to 60000:
UPDATE employees SET salary = 60000 WHERE id = 1001;
---Explanation: This query updates the salary column of the employee with an ID of 1001 to 60000 in the employees table.
6.	Query to delete all employees whose salary is less than 30000:
DELETE FROM employees WHERE salary < 30000;
---Explanation: This query deletes all the employees whose salary is less than 30000 from the employees table.
7.	Query to select all columns and rows from the departments table:
SELECT * FROM departments;
---Explanation: This query selects all the columns and rows from the departments table.
8.	Query to select only the name and manager columns of the "Finance" department:
SELECT name, manager FROM departments WHERE name = 'Finance';
---Explanation: This query selects the name and manager columns from the departments table where the department name is "Finance".
9: To select only the name and manager columns of the "Finance" department, use the following SQL query:
SELECT name, manager
FROM departments
WHERE name = 'Finance';
-----------
---This will retrieve only the name and manager columns of the department with the name "Finance" from the "departments" table.

10. To calculate the total number of employees in each department, use the following SQL query:
SELECT departments.name, COUNT(*) as total_employees
FROM departments
INNER JOIN employees ON departments.id = employees.department_id
GROUP BY departments.name;
--
--The COUNT(*) function is used to count the number of rows in each group,

11.To insert a new department called "Research" with a manager named "John Doe", use the following SQL query:
INSERT INTO departments (name, manager)
VALUES ('Research', 'John Doe');

---inserts a new row into the "departments" table
