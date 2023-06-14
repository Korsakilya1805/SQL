create table employees_nw(
id serial primary key,
employee_name Varchar(50) not null

);

 select*from employees_nw;

insert into employees_nw (employee_name)
values ('Acosta'),
('Aguila'),
('Aldana'),
('Alfonso'),
('Alliegro'),
('Alonso'),
('Álvarez'),
('Amoros'),
('Amaral'),
('Arce'),
('Arenas'),
('Aragón'),
('Armas'),
('Arroyo'),
('Aparicio'),
('Ascencio'),
('Avellaneda'),
('Avila'),
('Ayala'),
('Balmaseda'),
('Bartelemi'),
('Basílio'),
('Batista'),
 ('Bazán'),
('Bernal'),
('Beltrán'),
('Betancourt'),
('Bello'),
('Benavídez'),
('Benítez'),
('Blanco'),
('Borges'),
('Borja'),
('Castaneda'),
('Castilla'),
('Cabrera'),
('Caballero'),
('Calderín'),
('Cañizares'),
('Céspedes'),
('Cisnero'),
('Corzo'),
('Coronado'),
('Cortina'),
('Cuevas'),
('Delfín'),
('Destrade'),
('Despaigne'),
('Delgado'),
('De la Fe'),
('De la cruz'),
('Desnoes'),
('Diaz'),
('Escalante'),
('Fajardo'),
('Falcón'),
('Ferrer'),
('Fernández'),
('Fonseca'),
('Fredrick'),
('Fuentes'),
('García'),
('Galves'),
('Galiardo'),
('Hernández'),
('barra'),
('Iglesias'),
('nfante'),
('Jardinez'),
('Labrada');

 select*from employees_nw;

create table salary_nw (
id serial primary key,
monthly_salary int not null

);
 select*from salary_nw;

insert into salary_nw (monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500),
(2600),
(2700);

insert into salary_nw (monthly_salary)
values (100),
(200);

select*from salary_nw;

create table employees_nw_salary_nww(
id serial primary key,
employee_id int not null unique,
salary_id int not null,
foreign key (employee_id)
references employees_nw(id),
foreign key (salary_id)
references salary_nw (id)
);

select*from employees_nw_salary_nww;


insert into employees_nw_salary_nww (employee_id, salary_id)
values 
(7, 2),
(20, 4),
(3, 9),
(5, 13),
(23,4),
(11,2),
(10, 9),
(22, 13),
(21, 3),
(34, 4),
(6, 7),
(19, 17),
(2, 11),
(4, 9),
(32, 8),
(8, 16),
(40, 10),
(12, 17),
(14, 1),
(16, 3),
(18, 11),
(41, 20),
(70, 8),
(25, 7),
(28, 9),
(36, 20),
(35, 13),
(69, 16),
(33, 15),
(65, 15),
(47, 19),
(29, 17),
(42, 11),
(44, 9),
(56, 8),
(68, 16),
(50, 10),
(62, 17),
(24, 1),
(37, 3);

insert into employees_nw_salary_nww1 (salary_id)
values 
(17),
(18);

select*from employees_nw_salary_nww;




create table roles_nw1(
id serial primary key,
role_name int not null unique
);

select*from roles_nw1;

alter table roles_nw1
alter column role_name type varchar(30)


insert into roles_nw1 (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');
select*from roles_nw1;


create table roles_employee_nw1(
id serial primary key,
emploee_id int not null unique,
role_id int not null,
foreign key (emploee_id)
references employees_nw(id),
foreign key (role_id)
references roles_nw1 (id)
);
select*from roles_employee_nw1;


insert into roles_employee_nw1(emploee_id, role_id)
values 
(7, 2),
(20, 4),
(3, 9),
(5, 13),
(23,4),
(11,2),
(10, 9),
(22, 13),
(21, 3),
(34, 4),
(6, 7),
(19, 17),
(2, 11),
(4, 9),
(32, 8),
(8, 16),
(40, 10),
(12, 17),
(14, 1),
(16, 3),
(18, 11),
(41, 20),
(70, 8),
(25, 7),
(28, 9),
(36, 20),
(35, 13),
(69, 16),
(33, 15),
(65, 15),
(47, 19),
(29, 17),
(42, 11),
(44, 9),
(56, 8),
(68, 16),
(50, 10),
(62, 17),
(24, 1),
(37, 3);

select*from roles_employee_nw1;







___________________1
select employee_name, monthly_salary from employees_nw_salary_nww
join employees_nw on employee_id = employees_nw.id
join salary_nw on salary_id = salary_nw.id
__________________2
select employee_name, monthly_salary from employees_nw_salary_nww
join employees_nw on employee_id = employees_nw.id
join salary_nw on salary_id = salary_nw.id
where monthly_salary < 2000;

________________________3
select  employees_nw.employee_name, salary_nw.monthly_salary from employees_nw
right join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
right join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where employee_name is null;

________________________4
select  employees_nw.employee_name, salary_nw.monthly_salary from employees_nw
right join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
right join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
WHERE  employees_nw.employee_name is null and monthly_salary<2000;
_______________________________________




SELECT employees.employee_name, salary.monthly_salary
FROM employees left join
employee_salary ON employee_salary.employee_id=employees.id
left join
salary ON employee_salary.salary_id=salary.id
WHERE monthly_salary is null;



___________________5
select  employees_nw.employee_name, salary_nw.monthly_salary from employees_nw
left join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
left join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
WHERE monthly_salary is null;

select  employees_nw.employee_name, salary_nw.monthly_salary from employees_nw
right join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
right join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
WHERE monthly_salary is null;

select  employees_nw.employee_name, salary_nw.monthly_salary from employees_nw
right join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
right join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
WHERE monthly_salary  = ('1200');
________________________

______________6
select  employees_nw.employee_name, roles_nw1.role_name
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id

______________________7
select  employees_nw.employee_name, roles_nw1.role_name
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
where roles_nw1.role_name like '%Java %';
___________________ 8

select  employees_nw.employee_name, roles_nw1.role_name
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
where roles_nw1.role_name like '%Python%';


__________________9
select  employees_nw.employee_name, roles_nw1.role_name
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
WHERE roles_nw1.role_name like '%QA%';

________________10
select  employees_nw.employee_name, roles_nw1.role_name
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
WHERE roles_nw1.role_name like '%Manual QA%';

___________11
select  employees_nw.employee_name, roles_nw1.role_name
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
WHERE roles_nw1.role_name like '%Automation QA%';
_________12

select employees_nw.employee_name, monthly_salary
from  roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where roles_nw1.role_name like '%Junior%';


__________________13
select employees_nw.employee_name, monthly_salary
from  roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where roles_nw1.role_name like '%Middle%';
________________________14
select employees_nw.employee_name, monthly_salary
from  roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where  roles_nw1.role_name like '%Senior%';
___________________________15
select employees_nw.employee_name, monthly_salary
from  roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where roles_nw1.role_name  like '%Java %';
__________________16
select employees_nw.employee_name, monthly_salary
from  roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where roles_nw1.role_name  like '%Python %';
_______________________________17
select employees_nw.employee_name, monthly_salary
from  roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where roles_nw1.role_name like '%Junior Python%';
___________________________18

select employees_nw.employee_name, monthly_salary
from  roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where roles_nw1.role_name like '%Middle JavaScript%'; 

_______________19
select employees_nw.employee_name, monthly_salary
from  roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where roles_nw1.role_name  like '%Senior Java %'; 
___________________-20
select employees_nw.employee_name, monthly_salary
from  roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where roles_nw1.role_name like 'Junior%QA %';

___________________21
select avg(salary_nw.monthly_salary) as avg_monthly_salary_junior
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where roles_nw1.role_name like 'Junior%';
_______________________22

select sum (salary_nw.monthly_salary) as sum_monthly_salary_js
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where roles_nw1.role_name like '%JavaScript%';

_____________________23
select min (salary_nw.monthly_salary) as min_monthly_salary_qa
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where roles_nw1.role_name like '%QA%';
________________________24
select max (salary_nw.monthly_salary) as max_monthly_salary_qa
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where roles_nw1.role_name like '%QA%';
____________25
select count(roles_nw1.role_name) as count_qa
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
where roles_nw1.role_name like '%QA%';
_______________26
select count(roles_nw1.role_name) as count_middle
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
where roles_nw1.role_name like 'Middle%';
________________________27
select count(roles_nw1.role_name) as count_developer
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
where roles_nw1.role_name like '%developer';
__________________________28
select sum(salary_nw.monthly_salary) as sum_monthly_salary_dev
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where roles_nw1.role_name like '%developer';
_________________29
select employees_nw.employee_name, roles_nw1.role_name, salary_nw.monthly_salary
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
order by salary_nw.monthly_salary asc;
_____________________30
select employees_nw.employee_name, roles_nw1.role_name, salary_nw.monthly_salary
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where salary_nw.monthly_salary between 1700 and 2300
order by salary_nw.monthly_salary asc;
_______________________31

select employees_nw.employee_name, roles_nw1.role_name, salary_nw.monthly_salary
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where salary_nw.monthly_salary < 2300
order by salary_nw.monthly_salary asc;
______________________________32
select employees_nw.employee_name, roles_nw1.role_name, salary_nw.monthly_salary
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id
join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
where salary_nw.monthly_salary in (1100, 1500, 2000)
order by salary_nw.monthly_salary asc;











where roles.role_name like '%QA%';












join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like 'Junior%';







select employees.employee_name, monthly_salary
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id

join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Junior%';



join employees on employee_id = employees.id
join roles on role_id = roles.id


join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Junior%';






SELECT employees_nw.employee_name, roles_nw1.role_name,salary_nw.monthly_salary
FROM employees_nw.
INNER join roles_employee_nw1 ON  roles_employee_nw1.employee_id=employees_nw.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like 'Junior%';


select employees.employee_name, roles.role_name
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id
where roles.role_name like '%Python%';


SELECT employees_nw.employee_name, salary_nw.monthly_salary
FROM  employees_nw.
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id;

SELECT employees.employee_name, roles.role_name
FROM employees 
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id;

select employees.employee_name, roles.role_name
from roles_employee
join employees on employee_id = employees.id
join roles on role_id = roles.id;



select  employees_nw.employee_name, roles_nw1.role_name
from roles_employee_nw1
join employees_nw on emploee_id = employees_nw.id
join roles_nw1 on role_id = roles_nw1.id

select*from roles_employee_nw1;



select employees_nw.employee_name, roles_nw1.role_name from roles_employee_nw1
join employees_nw on employee_id=employees_nw.id
join roles_nw1 on role_id=roles_nw1.id;










SELECT employees.employee_name, salary.monthly_salary
FROM employees right join
employee_salary ON employee_salary.employee_id=employees.id
right join
salary ON employee_salary.salary_id=salary.id
WHERE employee_name is null;

select  employees_nw.employee_name, salary_nw.monthly_salary from employees_nw
right join employees_nw_salary_nww on employees_nw_salary_nww.employee_id = employees_nw.id
right join salary_nw on employees_nw_salary_nww.salary_id = salary.id
where employee_name is null;


select salary_nw.monthly_salary, employees_nw.employee_name  
from employees_nw_salary_nww 
left join salary_nw on employees_nw_salary_nww.salary_id = salary_nw.id
left join  employees_nw on employees_nw_salary_nww.employee_id = employees_nw.id
where employees_nw.employee_name = ('Labrada');


select salary_nw.monthly_salary, employees_nw.employee_name  
from employees_nw_salary_nww
left join salary_nw on employees_nw_salary_nww.salary_id = salary_id
left join  employees_nw on employees_nw_salary_nww.employee_id = employees_nw.id
where employees_nw.employee_name is null;

select employees.employee_name, salary.monthly_salary
from employee_salary 
join salary on employee_salary.salary_id=salary.id
join employees on employee_salary.employee_id=employees.id
where monthly_salary < 2000;

select  salary.monthly_salary, employees.employee_name
from employee_salary
left join salary on employee_salary.salary_id = salary.id
left join employees on employee_salary.employee_id = employees.id
where employees.employee_name is null;





















select*from  salary_nw


create table employees_nw(
id serial primary key,
employee_name Varchar(50) not null

);

 select*from employees_nw;


create table roles_employee_new(
id serial primary key,
emploee_id int not null unique,
role_id int not null,
foreign key (emploee_id)
references employees(id),
foreign key (role_id)
references roles_new (id)
);

insert into employees_nw_salary_nww (employee_id, salary_id)
values 
(3, 7),
(1, 4),
(5, 6),
(40, 13),
(23, 4),
(11, 2),
(52, 10),
(15, 13),
(26, 4),
(16, 1),
(33, 7),
(2, 8),
(4, 2),
(21, 5),
(270, 9),
(27, 15),
(24, 3),
(209, 7),
(29, 1),
(81, 5),
(92, 7),
(101, 15),
(115, 9),
(6, 6),
(7, 1),
(89, 3),
(116, 8),
(8, 3),
(9, 5),
(10, 15),
(12, 13),
(22, 10),
(34, 7),
(18, 11),
(20, 2),
(2075, 14),
(121, 1),
(125, 6),
(170, 18),
(93, 11);
select*from employees_nw_salary_nww;

select employee_name, role_name from employees_nw_salary_nw
join employees_nw on emploee_id = employees.id
join salary_nw on role_id = salary_nw.id

select*from employees_nw_salary_nw;




select*from employees_nw

select*from salary_nw




create table employee_nw_salary_nw (
id serial primary key,
employee_id Int not null unique,
salary_id Int not null
);
select*from employee_salary_new;





roles