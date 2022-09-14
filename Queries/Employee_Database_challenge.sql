
-- Create a list of employees within retirement eligability
SELECT e.emp_no,
 	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;
	


-- Use Dictinct with Orderby to remove duplicate rows & filter for employes no longer with the company
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;


-- Create a count of employee titles that are retiring
SELECT count(title) as count, title
INTO retiring_titles
FROM unique_titles
Group by title
Order by count desc;

SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_employees as de
on (e.emp_no = de.emp_no)
INNER JOIN titles as t
on (e.emp_no = t.emp_no)
WHERE  (de.to_date  = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
Order by e.emp_no;

--SUMMARY
-- Additional table to get the birth dates and distinct titles of current employees in retirement years
SELECT distinct on(e.emp_no) e.emp_no,
 	e.first_name,
	e.last_name,
	e.birth_date,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_years
FROM employees as e
INNER JOIN dept_employees as de
on (e.emp_no = de.emp_no)
INNER JOIN titles as t
on (e.emp_no = t.emp_no)
WHERE (de.to_date  = '9999-01-01')
AND (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

---- Additional table to get counts of retirees by year

Select date_part('year', birth_date) as year_count,
	count(title) as count
FROM retirement_years
group by year_count
order by year_count ASC;

---Additional table to count titles in mentorship group
SELECT count(title) as count, title
FROM mentorship_eligibility
Group by title
Order by count desc;