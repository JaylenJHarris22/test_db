USE employees;
SELECT title FROM titles;
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
# WHERE last_name LIKE 'E%'
#     OR last_name LIKE '%E';
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
    GROUP BY first_name, last_name;
SELECT  CONCAT(COUNT(*), ' ', last_name)
FROM employees
WHERE last_name LIKE '%q%'
  AND NOT last_name LIKE '%qu%'
    GROUP BY last_name;
SELECT CONCAT(COUNT(*), ' ', gender)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;