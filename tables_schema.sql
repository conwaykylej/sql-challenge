-- Create table schema
drop table titles
drop table salaries
drop table dept_manager
drop table dept_emp
drop table departments
drop table employees
-- create table Departments

create table departments (
dept_no varchar (10) not null,
dept_name varchar (30) not null,
primary key(dept_no)
);

select * from departments

-- create table employees

create table employees (
emp_no int not null,
emp_title_id varchar not null,
birth_date date not null,
first_name varchar not null,
last_name varchar not null,
sex varchar not null,
hire_date date not null,
primary key (emp_no)
);

select * from employees

-- create dempt_emp



create table dept_emp (
emp_no int not null,
dept_no varchar (10) not null,
foreign key (emp_no) REFERENCES employees(emp_no),
foreign key (dept_no) REFERENCES departments(dept_no),
primary key (dept_no, emp_no)
);

select * from dept_emp

-- create table dept_manager

create table dept_manager (
dept_no varchar (10) not null,
emp_no int not null,
foreign key (emp_no) REFERENCES employees(emp_no),
foreign key (dept_no) REFERENCES departments(dept_no),
primary key (dept_no, emp_no)
);

select * from dept_manager

-- create table Salaries

create table salaries (
emp_no int not null,
salary int not null,
foreign key (emp_no) REFERENCES employees(emp_no),
primary key (emp_no, salary)
);

select * from salaries


-- create table titles

create table titles (
title_id varchar not null,
title varchar not null,
primary key (title)
);

select * from titles
