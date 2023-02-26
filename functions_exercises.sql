USE employees;

# Part One
# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT  first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya', 'Maya');

# Find all employees whose last name starts with 'E'. Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';
SELECT CONCAT('first_name', 'last_name') FROM employees;

# Part Two
# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name =  'Maya';

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT first_name,
       last_name,
       gender
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name =  'Maya')
  AND gender = 'M';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

# =============================Start of order_by_exercises assignment =============================

# Modify your first query to order by first name. The first result should be Irena Flexer and the last result should be Vidya Awdeh.
SELECT  first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya', 'Maya')
ORDER BY first_name ASC;

# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT  first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya', 'Maya')
ORDER BY first_name, last_name;

# Change the order by clause so that you order by last name before first name.
# Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

# Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

# =============================Start of functions_exercises assignment =============================

# Find all employees born on Christmas — 842 rows.
SELECT first_name,
       last_name,
       birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%-12-25';

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%-12-25';
SELECT concat(datediff(curdate(),hire_date), ' days.') AS 'days_in_company'
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%-12-25';


