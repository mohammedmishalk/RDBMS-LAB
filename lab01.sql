create table Customer(cust_no varchar(5), cust_name varchar(15), age int, phone varchar(10));

insert into Customer values('C101','Sam',25,'9874563210');
insert into Customer values('C102','Jai',35,'9998763210');
insert into Customer values('C103','Ragil',29,'9872589610');
insert into Customer values('C104','Amrita',28,'9786546310');
insert into Customer values('C105','Jamesh',32,'9874365210');

select * from Customer;

alter table Customer add d_birth date;

create table cust_phone as select cust_name,phone from Customer;
select * from cust_phone;

alter table customer drop column age;
ALTER TABLE customer modify cust_name varchar(25);


delete from customer;

ALTER TABLE customer RENAME TO cust;

drop table cust;
