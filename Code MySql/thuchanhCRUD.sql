
-- like
-- select customernumber, contactlastname, contactfirstname, phone, city 
-- from trungdatabase.customers 
-- where contactfirstname like '%As%';customer

-- Beetween
-- select customernumber,user contactlastname, contactfirstname, phone, city 
-- from trungdatabase.customers 
-- where customernumber between 103 and 125

-- in
-- select customernumber, contactlastname, contactfirstname, phone, city , country
-- from trungdatabase.customers 
-- where country  in ('USA','France','spain') ;
-- where country = 'USA' or country = 'France' or country = 'spain';

-- asc, desc
-- select customernumber, contactlastname, contactfirstname, phone, city 
-- from customers 
-- order by contactfirstname asc;

-- count
-- select count(country) as 'So khach hang song o France'
-- 	from customers
--     where country = 'France';

-- insert
-- insert into trungdatabase.customers (customernumber, customername, contactfirstname, contactlastname, phone, addressline1, city, country) 
-- values (555, 'AgileLead', 'Lan', 'Trần', '0978822683', 'Hàm Nghi', 'Hà Nội', 'Việt Nam' );

-- update
-- update customers 
-- set customername = 'Baane '
-- where customernumber in (103,112)

-- delete
-- Set SQL_SAFE_UPDATES = 0;
-- delete from trungdatabase.customers
-- where city = 'Nantes';

