-- SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
-- INTO retirement_titles
-- FROM employees as e
-- INNER JOIN titles AS t
-- ON (e.emp_no = t.emp_no)
-- WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND to_date = ('9999-01-01')
-- ORDER BY emp_no ASC

-- Use Dictinct with Orderby to remove duplicate rows
-- SELECT DISTINCT ON (rt.emp_no)  rt.emp_no,
--    	rt.first_name,
--    	rt.last_name,
--    	rt.title 
-- INTO unique_titles
-- FROM retirement_titles AS rt
-- ORDER BY rt.emp_no, rt.to_date DESC;

--count of retiring
-- SELECT COUNT (ut.title), ut.title
-- INTO retiring_titles
-- FROM unique_titles as ut
-- GROUP BY ut.title
-- ORDER BY ut.count DESC;



--The Employees Eligible for the Mentorship Program
-- SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
-- INTO mentorship_eligibility
-- FROM employees as e
-- LEFT OUTER JOIN dept_emp as de
-- ON (e.emp_no = de.emp_no)
-- LEFT OUTER JOIN titles as t
-- ON (e.emp_no = t.emp_no)
-- WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
-- ORDER BY e.emp_no;

--SELECT * FROM mentorship_eligibility
--SELECT * FROM retiring_titles
--SELECT * FROM unique_titles
--SELECT * FROM retirement_titles







