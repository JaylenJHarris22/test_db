USE employees;
SELECT * FROM employees
-- WHERE first_name LIKE ('Irena', 'Vidya', 'Maya');
-- WHERE first_name OR ('Irena', 'Vidya', 'Maya');
WHERE first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya'
    AND gender = 'M';

SELECT first_name, last_name
FROM employees
# WHERE last_name LIKE 'E%'
#     OR last_name LIKE '%E';
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%E';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND NOT last_name LIKE '%qu%';