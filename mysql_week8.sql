SELECT count(title) AS "Number of Employees With Title", title AS "Job Title" 
FROM titles t
JOIN employees e 
ON t.emp_no = e.emp_no 
WHERE birth_date >='1965-01-01'
GROUP BY title 

SELECT truncate(AVG(s.salary), 2) AS "Average Salary", title AS "Job Title"
FROM salaries s 
JOIN titles t 
ON s.emp_no = t.emp_no 
GROUP BY title

SELECT SUM(s.salary) AS 'Total Salaries', d.dept_name AS 'Department'
FROM salaries s
INNER JOIN dept_emp de ON s.emp_no = de.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Marketing'
AND YEAR(s.from_date) >= 1990 AND YEAR(s.to_date) <= 1992
