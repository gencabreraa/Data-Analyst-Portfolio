-- Find the number of employees
SELECT COUNT(super_id)
FROM employee;


-- Find the average of all employee's salaries
SELECT AVG(salary)
FROM employee;

-- Find the total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY client_id;