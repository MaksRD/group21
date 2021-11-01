create table employees (
	id serial primary key,
	employee_name Varchar (50) not null
);
 select * from employees;

insert into employees (id, employee_name) values (default, 'Vitek');
select * from employees;


create table salary (
	id serial primary key,
	monthly_salary Int  not null
);

insert into salary (id, monthly_salary) values (default, 2500);
select * from salary;

create table employee_salary (
 id serial primary key,
 employee_id int not null unique,
 salary_id int not null
);
insert into employee_salary (id, employee_id, salary_id) values 
(default, 1, 11), 
(default, 4, 6), 
(default, 7, 7), 
(default, 10, 1), 
(default, 13, 11), 
(default, 16, 4), 
(default, 19, 9), 
(default, 21, 16), 
(default, 71, 3), 
(default, 72, 14), 
(default, 73, 10), 
(default, 74, 5), 
(default, 75, 2),
(default, 24, 8), 
(default, 27, 3), 
(default, 30, 15), 
(default, 33, 2), 
(default, 36, 14), 
(default, 39, 6),
(default, 42, 4), 
(default, 45, 9),
(default, 48, 10), 
(default, 76, 6), 
(default, 77, 4), 
(default, 78, 15), 
(default, 79, 7), 
(default, 80, 2), 
(default, 51, 11), 
(default, 54, 5),
(default, 57, 6), 
(default, 60, 2), 
(default, 63, 7), 
(default, 66, 9), 
(default, 69, 3), 
(default, 2, 7), 
(default, 5, 13), 
(default, 8, 16),
(default, 11, 14), 
(default, 14, 8), 
(default, 17, 9);


select * from employee_salary;

create table roles (
 id serial primary key,
 role_name int not null unique
 );
 select * from roles;

alter table roles 
alter column role_name type varchar (30)
using role_name:: varchar (30);

insert into roles (id, role_name) values 
(default, 'Junior Python developer'), 
(default, 'Middle Python developer'),
(default, 'Senior Python developer'),
(default, 'Junior Java developer'),
(default, 'Middle Java developer'),
(default, 'Senior Java developer'),
(default, 'Junior JavaScript developer'),
(default, 'Middle JavaScript developer'),
(default, 'Senior JavaScript developer'),
(default, 'Junior Manual QA engineer'),
(default, 'Middle Manual QA engineer'),
(default, 'Senior Manual QA engineer'),
(default, 'Project Manager'),
(default, 'Designer'),
(default, 'HR'),
(default, 'CEO'),
(default, 'Sales manager'),
(default, 'Junior Automation QA engineer'),
(default, 'Middle Automation QA engineer'),
(default, 'Senior Automation QA engineer');

create table roles_employee (
 id serial primary key,
 employee_id int not null unique,
 role_id int not null, 
  foreign key (employee_id)
  	references employees (id),
  foreign key (role_id) 
  	references roles (id)
);

insert into roles_employee (id, employee_id, role_id) values 
(default, 1, 11),
(default, 3, 3),
(default, 4, 6), 
(default, 6, 9),
(default, 7, 7), 
(default, 9, 20),
(default, 10, 1),
(default, 12, 18),
(default, 13, 11),
(default, 15, 19),
(default, 16, 4),
(default, 18, 17),
(default, 19, 9), 
(default, 21, 16), 
(default, 22, 17),
(default, 24, 8), 
(default, 27, 3), 
(default, 30, 15),
(default, 31, 10),
(default, 33, 2),
(default, 34, 3),
(default, 36, 14), 
(default, 39, 6),
(default, 42, 4), 
(default, 45, 9),
(default, 48, 10), 
(default, 51, 11), 
(default, 54, 5),
(default, 57, 6), 
(default, 60, 2), 
(default, 63, 12), 
(default, 66, 9), 
(default, 69, 3), 
(default, 2, 7), 
(default, 5, 13), 
(default, 8, 16),
(default, 11, 18), 
(default, 14, 15), 
(default, 17, 20),
(default, 52, 8);
select * from roles_employee;