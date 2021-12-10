create table employee (empid varchar(20),ename varchar(30),salary float,department varchar(20),age int);

insert into employee values('E100','Raj',15000,'HR',30);
insert into employee values('E101','Sojan',36000,'Research',40);
insert into employee values('E102','Priya',25000,'Purchase',34);
insert into employee values('E103','Thanuja',22000,'Sales',28);
insert into employee values('E106','Thanuja',45000,'Sales',28);
insert into employee values('E104','Sabir',38000,'HR',42);

select * from employee;

select count(*) as t_employee from employee;

select emp.ename,emp.age,emp.department from employee emp join(
	select max(age) as old,
	department as dept from employee group by department)
	emp2 on emp.department=dept and emp.age=old;
	
--this is also work check both
select department,max(age) from employee group by department;


select department,avg(age) from employee group by department;
select department,avg(salary) from employee group by department;

select min(salary) from employee;

select count(*) from employee where department='Purchase';
select max(salary) from employee where department ='Sales';

select max(salary)-min(salary) as difference from employee;

