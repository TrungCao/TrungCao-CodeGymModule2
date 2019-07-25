-- create table resortdatabase.customers(
-- 	id_customer int primary key,
--     name_customer varchar(50) not null,
--     address varchar(500) not null,
--     phone varchar(12) not null,
--     birthday date not null,
--     id_Employee int,
--     foreign key(id_Employee) references resortdatabase.Employees(id_Employee)
-- );


-- create table resortdatabase.Employees(
-- 	id_Employee int primary key,
--     name_employee varchar(50) not null,
--     birthday date not null,
--     phone_employee varchar(12) not  null,
--     salary decimal(18,2) not null
-- );

-- create table resortdatabase.accommodationType(
-- 	code_type varchar(15) primary key,
--     name_accommodationType varchar(50) not null
-- );
-- alter table resortdatabase.accommodationtype
-- add price decimal(18,2) not null

-- create table resortdatabase.accommondations(
-- 	code_accommondation varchar(15) primary key,
--     name_accommondation varchar(50) not null,
--     price decimal(18,2) not null,
--     code_type varchar(15) not null,
--     foreign key(code_type) references resortdatabase.accommodationType(code_type)
-- );
-- alter table resortdatabase.accommondations
-- drop column price;

-- create table resortdatabase.orders(
-- 	code_order varchar(15) primary key,
--     orderDate date not null,
--     comments varchar(100) null,
--     id_customer int,
--     foreign key(id_customer) references resortdatabase.customers(id_customer)
-- );

-- create table resortdatabase.orderdetails(
-- 	code_order varchar(15) not null,
--     code_accommondation varchar(15) not null,
--     primary key(code_order, code_accommondation),
--     foreign key(code_order) references resortdatabase.orders(code_order),
--     foreign key(code_accommondation) references resortdatabase.accommondations(code_accommondation),
--     numberDay int not null,
--     priceEach decimal(18,2) not null
-- );
-- alter table resortdatabase.orderdetails
-- 	drop totalPrice

-- create table resortdatabase.payments(
-- 	code_checkNumber varchar(15) primary key,
--     paymentType varchar(20) not null,
--     pamentDate date not null,
--     amount decimal(18,2) not null,
--     id_customer int not null,
--     foreign key(id_customer) references resortdatabase.customers(id_customer)
-- );

-- create table resortdatabase.cars(
-- 	id_car int primary key,
--     numberCar varchar(10) not null unique,
--     dayIn date not null,
--     id_customer int not null,
--     foreign key(id_customer) references resortdatabase.customers(id_customer)
-- );

-- Thao tac du lieu
-- B.1
-- update resortdatabase.accommodationtype 
-- set price = 5500.00
-- where code_type = 'type2'

-- B.3
-- set Sql_safe_updates = 0
-- delete from resortdatabase.cars
-- where dayOut  < '2019-06-23';

-- Truy vấn dữ liệu
-- C.1
-- select name_accommondation from resortdatabase.accommondations
-- inner join resortdatabase.orderdetails on accommondations.code_accommondation = orderdetails.code_accommondation
-- where code_type = 'type1'

-- C.2
-- select name_accommondation from resortdatabase.accommondations
-- left join resortdatabase.orderdetails on accommondations.code_accommondation = orderdetails.code_accommondation
-- where code_order is null

-- C.3
-- select name_employee from resortdatabase.employees where salary > 5000.00

-- C.4
-- select * from resortdatabase.customers 
-- where address like '%Hải Châu%';

-- C.5
 -- select*from resortdatabase.customers
-- where birthday < '1990-12-31'

-- C.6
-- select*from resortdatabase.customers
-- having day(birthday) = day(now()) and month(birthday) = month(now());

-- C.7
-- select * from resortdatabase.orders
-- where status = 'paid'

-- C.8
-- select * from resortdatabase.orders
-- where status = 'paid' and orderDate = '2019-03-07'

-- C.9
-- SELECT * FROM resortdatabase.employees
-- where birthday Between '1960-01-01' and  '1970-12-31'

-- C.10
-- select * from resortdatabase.employees
-- where (year(now()) - year(birthday)) > 45

-- C.11
-- SELECT code_order, paymentType FROM resortdatabase.orders
-- inner join resortdatabase.payments on orders.id_customer = payments.id_customer
-- where paymentType = 'VISACARD'
-- group by code_order

-- C.12
-- SELECT code_order, paymentType FROM resortdatabase.orders
-- inner join resortdatabase.payments on orders.id_customer = payments.id_customer
-- where paymentType = 'MASTERCARD'
-- group by code_order

-- C.13
-- SELECT * FROM resortdatabase.cars
--  where date(dayIn) = date(now());

-- C.14
-- SELECT name_employee FROM resortdatabase.employees
-- where month(birthday) = '8'

-- C.15
-- SELECT name_accommondation FROM resortdatabase.accommondations;

-- C.16
-- SELECT orders.code_order, customers.name_customer, customers.address, customers.phone, customers.birthday FROM resortdatabase.orders
-- inner join resortdatabase.customers on customers.id_customer = orders.id_customer

-- C.17
-- select customers.name_customer, customers.address, customers.phone, employees.*
-- from resortdatabase.customers
-- inner join resortdatabase.orders on customers.id_customer = orders.id_customer
-- inner join resortdatabase.employees on customers.id_Employee = employees.id_Employee 

-- C.18
-- select accommodationtype.name_accommodationType, count(accommodationtype.code_type) as 'so luong'
-- from resortdatabase.accommodationtype inner join resortdatabase.accommondations
-- on accommodationtype.code_type = accommondations.code_type
-- group by name_accommodationType

-- C.19

-- C.20
-- select name_accommondation, orders.checkIn from resortdatabase.orderdetails
-- inner join resortdatabase.accommondations on orderdetails.code_accommondation = accommondations.code_accommondation
-- inner join resortdatabase.orders on orderdetails.code_order = orders.code_order
-- where checkIn between '2019-07-01' and '2019-08-01'

-- C.21
-- select resortdatabase.customers.* from resortdatabase.orders
-- inner join resortdatabase.customers on orders.id_customer = customers.id_customer
-- inner join resortdatabase.orderdetails on orderdetails.code_order = orders.code_order
-- where checkIn between '2019-07-01' and '2019-08-01'

-- C.22
SELECT name_customer, status /* , orders.code_order,name_accommodationType, numberDay, price*/, sum(price*numberDay) as total
FROM resortdatabase.orders
inner join resortdatabase.customers on customers.id_customer = orders.id_customer
inner join resortdatabase.orderdetails on orders.code_order = orderdetails.code_order
inner join resortdatabase.accommondations on orderdetails.code_accommondation = accommondations.code_accommondation
inner join resortdatabase.accommodationtype on accommondations.code_type = accommodationtype.code_type
where status = 'paid' and checkIn > '2019-07-01'
group by name_customer
having sum(price*numberDay) > 10000

-- C.23
-- SELECT orders.code_order,checkIn,status, sum(price*numberday) as total 
-- FROM resortdatabase.orders
-- inner join resortdatabase.orderdetails on orders.code_order = orderdetails.code_order
-- inner join resortdatabase.accommondations on orderdetails.code_accommondation = accommondations.code_accommondation
-- inner join resortdatabase.accommodationtype on accommondations.code_type = accommodationtype.code_type
-- where status = 'paid'
-- group by code_order

-- C.24
-- C.25

-- C.26
-- SELECT name_accommodationType, sum(price*numberday) as total 
-- FROM resortdatabase.orders
-- inner join resortdatabase.orderdetails on orders.code_order = orderdetails.code_order
-- inner join resortdatabase.accommondations on orderdetails.code_accommondation = accommondations.code_accommondation
-- inner join resortdatabase.accommodationtype on accommondations.code_type = accommodationtype.code_type
-- where status = 'paid'
-- group by name_accommodationType

-- C.27
-- SELECT name_accommodationType, sum(price*numberday) as total 
-- FROM resortdatabase.orders
-- inner join resortdatabase.orderdetails on orders.code_order = orderdetails.code_order
-- inner join resortdatabase.accommondations on orderdetails.code_accommondation = accommondations.code_accommondation
-- inner join resortdatabase.accommodationtype on accommondations.code_type = accommodationtype.code_type
-- where status = 'paid' and year(checkIn) = '2019'
-- group by name_accommodationType

-- C.28


-- C.29

