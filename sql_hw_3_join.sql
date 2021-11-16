--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name , monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id;
--2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
where monthly_salary < 2000 ;
--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
SELECT  monthly_salary, employee_name
FROM employee_salary
full JOIN employees 
ON employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id 
WHERE employee_name IS NULL;
--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select  monthly_salary, employee_name from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.salary_id = employees.id 
where employee_id > 70 and monthly_salary < 2000;
--5. Найти всех работников кому не начислена ЗП.
select employee_name, employees.id from employees 
full join employee_salary on employees.id = employee_salary.employee_id 
full join salary on employee_salary.salary_id = salary.id 
where monthly_salary is null;

--6. Вывести всех работников с названиями их должности.
select distinct employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id;

--7. Вывести имена и должность только Java разработчиков.
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Java %';
--8. Вывести имена и должность только Python разработчиков.
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Python%';
--9. Вывести имена и должность всех QA инженеров.
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%QA%';
--10. Вывести имена и должность ручных QA инженеров.
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Manual QA%';
--11. Вывести имена и должность автоматизаторов QA
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Automation QA%';
--==========================================================================
--12. Вывести имена и зарплаты Junior специалистов
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Junior%';
--13. Вывести имена и зарплаты Middle специалистов
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Middle%';
--14. Вывести имена и зарплаты Senior специалистов
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Senior%';
--==========================================================
--15. Вывести зарплаты Java разработчиков
select  monthly_salary from salary 
full join roles_employee on salary.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Java %';
--16. Вывести зарплаты Python разработчиков
select  monthly_salary from salary 
full join roles_employee on salary.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Python%';
--17. Вывести имена и зарплаты Junior Python разработчиков
select  employee_name, monthly_salary, role_name from salary 
full join roles_employee on salary.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
full join employees on roles.id = employees.id 
where role_name Like '%Junior Python%';
--18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, monthly_salary from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%Middle JavaScript%';



--19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, monthly_salary from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%Senior Java developer%';
--20. Вывести зарплаты Junior QA инженеров
select employee_name, monthly_salary from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%Junior Manual QA %';
--21. Вывести среднюю зарплату всех Junior специалистов
select AVG (monthly_salary) from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%Junior %';
--22. Вывести сумму зарплат JS разработчиков
select SUM (monthly_salary) from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%JavaScript %';
--23. Вывести минимальную ЗП QA инженеров
select MIN (monthly_salary) from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%QA %';
--24. Вывести максимальную ЗП QA инженеров
select MAX (monthly_salary) from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%QA %';
--25. Вывести количество QA инженеров
select count(role_name) from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%QA %';
--26. Вывести количество Middle специалистов.
select count(role_name)
from roles_employee
join roles on roles_employee.role_id=roles.id
where role_name like '%Middle%';
--27. Вывести количество разработчиков
select count(role_name)
from roles_employee
full join roles on roles_employee.role_id=roles.id
where role_name like '%developer%';
--28. Вывести фонд (сумму) зарплаты разработчиков.
--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
