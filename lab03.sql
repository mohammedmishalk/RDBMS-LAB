create table hospital(doctoid varchar(10) primary key,doctor_name varchar(25),department varchar(25),qualification varchar(10),experience int);

insert into hospital values('D001','Samir','ENT','MS',10);
insert into hospital values ('D002','Niya','General Medicine','MD',6);
insert into hospital values ('D003','Uday','Pulmanology','MS',10);
insert into hospital values ('D004','Sisira','Paediatrician','MS',3);
insert into hospital values ('D005','Daya','Cardiology','MS',15);

select * from hospital;
select * from hospital where qualification='MD';
select * from hospital where experience>5 and qualification <> 'MD';
select * from hospital where department='skin';

update hospital set experience=5 where doctoid='D003';
delete from hospital where doctoid='D005';
