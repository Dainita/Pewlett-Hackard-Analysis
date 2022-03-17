SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ttl.title,
	ttl.from_date,
	ttl.to_date
INTO retirement_titles_table
FROM employees AS e
INNER JOIN titles AS ttl
ON (e.emp_no=ttl.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31';

SELECT DISTINCT ON (emp_no) r.emp_no,
r.first_name,
r.last_name,
r.title

INTO unique_titles
FROM retirement_titles_table AS r
WHERE r.to_date = '9999-01-01'
ORDER BY r.emp_no, r.to_date DESC;

SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

SELECT * FROM retiring_titles

SELECT DISTINCT ON (emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
d.from_date,
d.to_date,
ttl.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS d
ON (e.emp_no=d.emp_no)
INNER JOIN titles AS ttl
ON (e.emp_no=ttl.emp_no)
WHERE (d.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
