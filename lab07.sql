create table employee(employee_name varchar(20),city varchar(30));
create table works(employee_name varchar(20),company_name varchar(20),salary int);
create table company(company_name varchar(20),city varchar(30));
create table managers(employee_name varchar(20),manager_name varchar(20));

insert into employee values('Sam','Cochin');
insert into employee values('Ram','Bengaluru');
insert into employee values('Priya','Pune');

insert into works values('Sam','Wipro',15000);
insert into works values('Ram','Infosys',25000);
insert into works values('Priya','Wipro',22000);

insert into company values('Wipro', 'Bengaluru');
insert into company values('Infosys','Bengaluru');

insert into managers values('Sam','Diya');
insert into managers values('Ram','Arul');
insert into managers values('Priya','Das');

select * from employee;
select * from works;
select * from company;
select * from managers;

select employee_name from works where company_name='Infosys';

select employee.employee_name,employee.city from employee,works 
	where employee.employee_name=works.employee_name 
	and works.company_name='Wipro';
	
select employee.employee_name,employee.city from employee,works
	where employee.employee_name=works.employee_name 
	and works.company_name='Infosys' and salary>10000;

select employee.employee_name from employee,works,company 
	where company.company_name=works.company_name 
	and employee.employee_name=works.employee_name 
	and company.city=employee.city; 

select * from works where company_name<>'Wipro';

select company_name from works group by company_name having count (distinct employee_name) 
>= all (select count (distinct employee_name) from works group by company_name)
	











