USE employees;
USE employees;
SELECT * FROM employees
-- WHERE first_name LIKE ('Irena', 'Vidya', 'Maya');
-- WHERE first_name OR ('Irena', 'Vidya', 'Maya');
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
--    ORDER BY first_name;
--    ORDER BY first_name, last_name;
--    ORDER BY last_name, first_name;
ORDER BY last_name DESC, first_name DESC;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
     -- WHERE last_name LIKE 'E%'
     --     OR last_name LIKE '%E';
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
ORDER BY emp_no DESC ;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND NOT last_name LIKE '%qu%';

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE MONTH(birth_date)=12
    AND DAY(birth_date)=25;
SELECT CONCAT(first_name, ' ', last_name), DATEDIFF(curdate(), hire_date)
FROM employees
WHERE MONTH(birth_date)=12
    AND DAY(birth_date)=25
    AND YEAR(hire_date) BETWEEN 1990 AND 1999
    ORDER BY birth_date, hire_date DESC;