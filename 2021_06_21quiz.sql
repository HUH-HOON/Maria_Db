<<<<<<< HEAD
Use employees ; 
-- 1.  모든 부서의 이름(departments.dept_name)과  그 부서에 근무하는 모든 사원의 이름(employees.first_name 과 employees.last_name )을 출력하세요.   
select departments.dept_name, employees.first_name, employees.last_name
FROM departments INNER JOIN dept_emp
on departments.dept_no = dept_emp.dept_no
JOIN employees
on employees.emp_no = dept_emp.emp_no
where dept_emp.to_date = '9999-01-01';


-- 2.  d007번 부서의 이름(departments.dept_name)과  그 부서에 근무하는 모든 사원의 이름(employees.first_name  과 employees.last_name )을 출력하세요.
select departments.dept_name, employees.first_name, employees.last_name, departments.dept_no
FROM departments INNER JOIN dept_emp
on departments.dept_no = dept_emp.dept_no
JOIN employees
on employees.emp_no = dept_emp.emp_no
WHERE departments.dept_no = 'd007'
AND dept_emp.to_date = '9999-01-01';


-- 3.  d007번 부서의 이름(departments.dept_name)과 그 부서에 근무하는 모든 사원 중 남자인 사원의 모든 사원의 이름(employees.first_name  과 employees.last_name )을 출력하세요.
select departments.dept_name, employees.first_name, employees.last_name, departments.dept_no
FROM departments INNER JOIN dept_emp
on departments.dept_no = dept_emp.dept_no
JOIN employees
on employees.emp_no = dept_emp.emp_no
WHERE departments.dept_no = 'd007'
AND employees.gender = 'M'
AND dept_emp.to_date = '9999-01-01';


-- 4.  d007번 부서의 이름(departments.dept_name)과 그 부서에 근무하는 모든 사원 중 남자이고, 2000년에 입사한모든 사원의 이름(employees.first_name  과 employees.last_name )을 출력하세요.
select departments.dept_name, employees.first_name, employees.last_name, departments.dept_no
FROM departments INNER JOIN dept_emp
on departments.dept_no = dept_emp.dept_no
JOIN employees
on employees.emp_no = dept_emp.emp_no
WHERE departments.dept_no = 'd007'
AND employees.gender = 'M';


-- 5.  d007번 부서의 이름(departments.dept_name)과 그 부서에 근무하는 모든 사원 중 남자이고, 2000년에 입사한모든 사원의 이름(employees.first_name  과 employees.last_name )을 출력하세요. 
-- 단, 사원이름(employees.first_name) 오름차순으로 정렬하여 출력하세요 .
select departments.dept_name, employees.first_name, employees.last_name, departments.dept_no
FROM departments INNER JOIN dept_emp
on departments.dept_no = dept_emp.dept_no
JOIN employees
on employees.emp_no = dept_emp.emp_no
WHERE employees.hire_date = '2000*'
AND departments.dept_no = 'd007'
AND employees.gender = 'M'
order by employees.first_name desc;
 
-- 6,   Staff 업무(titles.title) 로 근무한 적이 있는 모든 사원의 이름(employees.first_name  과 employees.last_name )을 출력하세요. 
SELECT titles.title, employees.first_name, employees.last_name
FROM titles INNER JOIN employees
on titles.emp_no = employees.emp_no;
  
-- 7.   Staff 업무(titles.title) 로 근무한 적이 있는 모든 사원의 평균 급여(salaries.salary) 를 출력하세요. 
SELECT titles.title, AVG(salaries.salary) AS Average 
FROM titles INNER JOIN salaries
on titles.emp_no = salaries.emp_no 
where titles.title = 'Staff';
 
-- 8.  업무(titles.title) 별로  사원들의 평균 급여(salaries.salary) 를 출력하세요.
SELECT titles.title, avg(salaries.salary)
FROM titles INNER JOIN salaries
on titles.emp_no = salaries.emp_no
GROUP BY titles.title;
 


=======
Use employees ; 
-- 1.  모든 부서의 이름(departments.dept_name)과  그 부서에 근무하는 모든 사원의 이름(employees.first_name 과 employees.last_name )을 출력하세요.   
select departments.dept_name, employees.first_name, employees.last_name
FROM departments INNER JOIN dept_emp
on departments.dept_no = dept_emp.dept_no
JOIN employees
on employees.emp_no = dept_emp.emp_no;


-- 2.  d007번 부서의 이름(departments.dept_name)과  그 부서에 근무하는 모든 사원의 이름(employees.first_name  과 employees.last_name )을 출력하세요.
select departments.dept_name, employees.first_name, employees.last_name, departments.dept_no
FROM departments INNER JOIN dept_emp
on departments.dept_no = dept_emp.dept_no
JOIN employees
on employees.emp_no = dept_emp.emp_no
WHERE departments.dept_no = 'd007';


-- 3.  d007번 부서의 이름(departments.dept_name)과 그 부서에 근무하는 모든 사원 중 남자인 사원의 모든 사원의 이름(employees.first_name  과 employees.last_name )을 출력하세요.
select departments.dept_name, employees.first_name, employees.last_name, departments.dept_no
FROM departments INNER JOIN dept_emp
on departments.dept_no = dept_emp.dept_no
JOIN employees
on employees.emp_no = dept_emp.emp_no
WHERE departments.dept_no = 'd007'
AND employees.gender = 'M';


-- 4.  d007번 부서의 이름(departments.dept_name)과 그 부서에 근무하는 모든 사원 중 남자이고, 2000년에 입사한모든 사원의 이름(employees.first_name  과 employees.last_name )을 출력하세요.
select departments.dept_name, employees.first_name, employees.last_name, departments.dept_no
FROM departments INNER JOIN dept_emp
on departments.dept_no = dept_emp.dept_no
JOIN employees
on employees.emp_no = dept_emp.emp_no
WHERE departments.dept_no = 'd007'
AND employees.gender = 'M';


-- 5.  d007번 부서의 이름(departments.dept_name)과 그 부서에 근무하는 모든 사원 중 남자이고, 2000년에 입사한모든 사원의 이름(employees.first_name  과 employees.last_name )을 출력하세요. 
-- 단, 사원이름(employees.first_name) 오름차순으로 정렬하여 출력하세요 .
select departments.dept_name, employees.first_name, employees.last_name, departments.dept_no
FROM departments INNER JOIN dept_emp
on departments.dept_no = dept_emp.dept_no
JOIN employees
on employees.emp_no = dept_emp.emp_no
WHERE employees.hire_date = '2000*'
AND departments.dept_no = 'd007'
AND employees.gender = 'M'
order by employees.first_name desc;
 
-- 6,   Staff 업무(titles.title) 로 근무한 적이 있는 모든 사원의 이름(employees.first_name  과 employees.last_name )을 출력하세요. 
SELECT titles.title, employees.first_name, employees.last_name
FROM titles INNER JOIN employees
on titles.emp_no = employees.emp_no;
  
-- 7.   Staff 업무(titles.title) 로 근무한 적이 있는 모든 사원의 평균 급여(salaries.salary) 를 출력하세요. 
SELECT titles.title, AVG(salaries.salary) AS Average 
FROM titles INNER JOIN salaries
on titles.emp_no = salaries.emp_no 
where titles.title = 'Staff';
 
-- 8.  업무(titles.title) 별로  사원들의 평균 급여(salaries.salary) 를 출력하세요.
SELECT titles.title, avg(salaries.salary)
FROM titles INNER JOIN salaries
on titles.emp_no = salaries.emp_no
GROUP BY titles.title;
 


>>>>>>> d16ef87cb45420b39f9c7b5c0c9e386d4a889e7e
