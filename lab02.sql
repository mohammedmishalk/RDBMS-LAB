create table sales_man(salesman_no varchar(10) primary key,s_name varchar(25) not null,place varchar(25),phone varchar(10) unique);
insert into sales_man values('01','nunu','malappuram','9866780956');
insert into sales_man values('02','monu','malappuram','9866787845');
insert into sales_man values('03','pinju','malappuram','9866782573');
insert into sales_man values('04','aju','malappuram','9866780353');
insert into sales_man values('05','muthu','malappuram','9866787656');
select * from sales_man;

create table sales_order(
	order_no varchar(10) primary key,
	order_date date not null,
	salesman_no varchar(10),
	del_type varchar(1),
	order_status varchar(15),
	constraint fk_salesman foreign key(salesman_no)references sales_man(salesman_no),
	constraint check_del_type check(del_type in ('P','F')),
	constraint check_order_status check(order_status in ('inprocess','Fullfilled','Backorder','canselled'))
);
insert into sales_order values('O101','05-10-2019','01','P','Fullfilled');
insert into sales_order values('O102','03-20-2019','02','P','Inprocess');
insert into sales_order values('O103','02-15-2019','03','P','Fullfilled');
insert into sales_order values('O104','04-16-2019','01','F','Backorder');

select * from sales_order;

alter table sales_order DROP constraint fk_salesman;
alter table sales_order drop constraint check_order_status;
alter table sales_order drop constraint check_del_type;
alter table sales_man drop constraint sales_man_pkey;
alter table sales_man add primary key(salesman_no);
alter table sales_order add foreign key(salesman_no) references sales_man(salesman_no);
alter table sales_order add constraint ch check(del_type in('P','F'));
alter table sales_order add constraint chk check(order_status in ('Inprocess', 'Fullfilled','Backorder',
'Cancelled'));
