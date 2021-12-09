create table product(
	product_code varchar(20) primary key,
	product_name varchar(20),
	category varchar(30),
	quantity int,
	price int
)

insert into product values('P001','Colgate','Paste',10,25);
insert into product values('P002','Close Up','Paste',10,30);
insert into product values('P003','Lux','Soap',10,35);
insert into product values('P004','Hamam','Soap',5,18);
insert into product values('P005','Sunlight','Washing powder',5,60);
insert into product values('P006','Tide','Washing powder',15,80);
insert into product values('P007','Wash More','Washing powder',8,40);

select * from product;

select * from product order by product_name desc;

select product_code,product_name from product where price between 20 and 50;

select product_name,price from product where category in('Bath Soap', 'Paste',
'Washing powder');

select *  from product where quantity<100 or quantity>500;

select * from product where product_name like'S%';

select * from product where category <>'Paste';

select * from product where PRODUCT_NAME like '_u%' and category='Washing powder';
