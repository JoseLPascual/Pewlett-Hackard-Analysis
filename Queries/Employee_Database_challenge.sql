-- Create new table for retiring employees
SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM retirement_titles
ORDER BY emp_no;

-- Check the table
SELECT * FROM retirement_info;

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Check the table
SELECT * FROM unique_titles;

SELECT COUNT(*), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles;
DROP TABLE retiring_titles;

-- End of Deliverable 1, beginning of Deliverable 2
-- Create new table for the mentorship program
SELECT DISTINCT ON (employees.emp_no) dept_emp.emp_no,
	employees.first_name,
	employees.last_name,
	employees.birth_date,
	dept_emp.from_date,
	dept_emp.to_date
INTO tempor
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (to_date = '9999-01-01');
SELECT * FROM tempor;

SELECT DISTINCT ON (tempor.emp_no) titles.emp_no,
	tempor.first_name,
	tempor.last_name,
	tempor.birth_date,
	tempor.from_date,
	tempor.to_date,
	titles.title
INTO mentorship_eligibility
FROM tempor
INNER JOIN titles
ON tempor.emp_no = titles.emp_no;
SELECT * FROM mentorship_eligibility;

-- DROP TABLE tempor;
-- DROP TABLE mentorship_eligibility;