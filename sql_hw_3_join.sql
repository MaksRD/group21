--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name , monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id;
--2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
where monthly_salary < 2000 ;
--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
SELECT  monthly_salary, employee_name
FROM employee_salary
full JOIN employees 
ON employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id 
WHERE employee_name IS NULL;
--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select  monthly_salary, employee_name from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.salary_id = employees.id 
where employee_id > 70 and monthly_salary < 2000;
--5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, employees.id from employees 
full join employee_salary on employees.id = employee_salary.employee_id 
full join salary on employee_salary.salary_id = salary.id 
where monthly_salary is null;

--6. ������� ���� ���������� � ���������� �� ���������.
select distinct employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id;

--7. ������� ����� � ��������� ������ Java �������������.
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Java %';
--8. ������� ����� � ��������� ������ Python �������������.
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Python%';
--9. ������� ����� � ��������� ���� QA ���������.
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%QA%';
--10. ������� ����� � ��������� ������ QA ���������.
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Manual QA%';
--11. ������� ����� � ��������� ��������������� QA
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Automation QA%';
--==========================================================================
--12. ������� ����� � �������� Junior ������������
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Junior%';
--13. ������� ����� � �������� Middle ������������
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Middle%';
--14. ������� ����� � �������� Senior ������������
select  employee_name, role_name from employees 
full join roles_employee on employees.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Senior%';
--==========================================================
--15. ������� �������� Java �������������
select  monthly_salary from salary 
full join roles_employee on salary.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Java %';
--16. ������� �������� Python �������������
select  monthly_salary from salary 
full join roles_employee on salary.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
where role_name Like '%Python%';
--17. ������� ����� � �������� Junior Python �������������
select  employee_name, monthly_salary, role_name from salary 
full join roles_employee on salary.id = roles_employee.role_id 
full join roles on roles_employee.role_id = roles.id
full join employees on roles.id = employees.id 
where role_name Like '%Junior Python%';
--18. ������� ����� � �������� Middle JS �������������

select employee_name, monthly_salary from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%Middle JavaScript%';



--19. ������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%Senior Java developer%';
--20. ������� �������� Junior QA ���������
select employee_name, monthly_salary from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%Junior Manual QA %';
--21. ������� ������� �������� ���� Junior ������������
select AVG (monthly_salary) from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%Junior %';
--22. ������� ����� ������� JS �������������
select SUM (monthly_salary) from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%JavaScript %';
--23. ������� ����������� �� QA ���������
select MIN (monthly_salary) from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%QA %';
--24. ������� ������������ �� QA ���������
select MAX (monthly_salary) from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%QA %';
--25. ������� ���������� QA ���������
select count(role_name) from roles_employee 
full join employees e on roles_employee.employee_id = e.id
full join roles r on r.id = roles_employee.role_id 
full join employee_salary es on es.employee_id = e.id 
full join salary s on s.id = es.salary_id 
where role_name Like '%QA %';
--26. ������� ���������� Middle ������������.
select count(role_name)
from roles_employee
join roles on roles_employee.role_id=roles.id
where role_name like '%Middle%';
--27. ������� ���������� �������������
select count(role_name)
from roles_employee
full join roles on roles_employee.role_id=roles.id
where role_name like '%developer%';
--28. ������� ���� (�����) �������� �������������.
--29. ������� �����, ��������� � �� ���� ������������ �� �����������
--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
