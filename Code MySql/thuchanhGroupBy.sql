-- SELECT * FROM classicmodels.orders;
-- select status from classicmodels.orders
-- group by status

-- group by, count
-- select status, count(*) as 'so luong status'
-- from classicmodels.orders group by status

-- group by ,sum
-- select status , orders.orderNumber, sum(quantityordered * priceeach) as amount
-- from orders
-- inner join orderdetails on orders.orderNumber = orderdetails.orderNumber
-- group by status

-- select ordernumber, sum( quantityordered*priceeach) as total
-- from orderdetails
-- group by orderNumber

-- group by , having
-- select year(orderDate) as year, sum(quantityOrdered * priceEach) as total
-- from orders 
-- inner join orderdetails on orders.orderNumber = orderdetails.orderNumber
-- where status = 'shipped'
-- group by year
-- having year > 2003



