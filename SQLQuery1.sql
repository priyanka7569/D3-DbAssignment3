drop database ExcerciseDb 

create database ExerciseDb
use ExcerciseDb
drop table Products
create table Products
(PId int primary key,
PQ int,
PPrice float,
DiscountPercent float,
Manufacturingdate Date
)

--1.Insert atleast 5 records
insert into Products values(1,1,5000.50,0.15,'10/12/2021')
insert into Products values(2,6,2000.50,0.10,'9/8/2019')
insert into Products values(3,4,10000.50,0.15,'11/12/2022')
insert into Products values(4,10,15000.50,0.25,'10/10/2023')
insert into Products values(8,2,20000.50,0.005,'8/10/2018')

--delete from Products where PId=3
--delete from Products where PId=4
--delete from Products where PId=8

select * from Products
delete  from Products
select * from Products

--2. Create a function which calculates Discount
create function Discount
(@price float,@discount float) 
returns float
as 
begin 
return (@price-(@price*@discount))
end

--3.Display Discount Price
select dbo.Discount(PPrice,DiscountPercent) as 'Discount Price' from Products
--Displaying PId,PPrice,DiscountPercent and Disount Price
select PId,PPrice,DiscountPercent,dbo.Discount(PPrice,DiscountPercent) as 'Discount Price' from Products