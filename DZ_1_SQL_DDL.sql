__________Домашка 1

_______employees

create table employees(
id serial primary key,
employee_name Varchar(50) not null

);

 select*from employees;

insert into employees (employee_name)
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

 select*from employees;

__________salary

create table salary_new (
id serial primary key,
monthly_salary int not null

);
 select*from salary_new;

insert into salary_new (monthly_salary)
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
(2500);

select*from salary_new;


create table employee_salary_new (
id serial primary key,
employee_id Int not null unique,
salary_id Int not null
);
select*from employee_salary_new;

insert into employee_salary_new (employee_id, salary_id)
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
select*from employee_salary_new;

____________________roles

create table roles_new(
id serial primary key,
role_name int not null unique
);
select*from roles_new;


alter table roles_new
alter column role_name type varchar(30);


insert into roles_new (role_name)
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
select*from roles_new;


_________________roles_employee_new


create table roles_employee_new(
id serial primary key,
emploee_id int not null unique,
role_id int not null,
foreign key (emploee_id)
references employees(id),
foreign key (role_id)
references roles_new (id)
);
select*from roles_employee_new;

insert into roles_employee_new(emploee_id, role_id)
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

select*from roles_employee_new;