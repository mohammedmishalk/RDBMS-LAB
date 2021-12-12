create table bank_customer(accno int primary key,cust_name varchar(25),place varchar(20));

create table deposit( accno int,deposit_no varchar(20),damount float,foreign key(accno) references bank_customer(accno));

create table loan(accno int,loan_no int,lamaount float, Foreign key(accno) references bank_customer(accno));

insert into bank_customer values(100,'Sam','Perinthalmanna');
insert into bank_customer values(101,'Jos','Palakkad');
insert into bank_customer values(102,'Jai','Calicut');
insert into bank_customer values(103,'Siva','Thrissur');

insert into deposit values(100,10,2000);
insert into loan values(101,10,5000);
insert into deposit values(103,11,3000);
insert into loan values(103,11,4000);

select * from bank_customer;
select * from loan;

select * from bank_customer where accno in(select distinct accno from deposit)and accno not in (select distinct accno from loan);
select * from bank_customer where accno not in (select distinct accno from deposit)and accno in (select distinct accno from loan);
select * from bank_customer where accno in (select distinct accno from deposit)and accno in (select accno distinct from loan);
select * from bank_customer where accno not in(select distinct accno from deposit) and accno not in (select distinct accno from loan); )
