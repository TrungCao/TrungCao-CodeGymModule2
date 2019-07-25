-- Sử dụng AND
-- hiển thị ra các sản phẩm có giá lớn hơn 56.76 và số lượng trong kho lớn hơn 10 
-- select productCode, productName, buyprice, quantityInStock from classicmodels.products
-- where buyprice > 56.76 and quantityInStock > 10

--  giá mua nằm trong khoảng từ 1000 đến 2000
-- SELECT productCode,productName, buyprice, textDescription
-- FROM products
-- INNER JOIN productlines
-- ON products.productline = productlines.productline
-- WHERE buyprice > 56.76 AND buyprice < 95.59

-- Sử dụng OR
-- loại sản phẩm là Classic Cars hoặc nhà cung cấp là 'Min Lin Diecast'
-- select productCode, productName, buyprice, quantityInStock, productVendor, productLine 
-- from products 
-- where productLine = 'Classic Cars' or productVendor = 'Min Lin Diecast'

