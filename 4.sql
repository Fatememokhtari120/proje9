create procedure soal4
           @p nvarchar(50)
as
SELECT  customers.name,customers.address
FROM customers INNER JOIN orders
on customers.ID=orders.customers_id
INNER JOIN product
on orders.Product_id=product.id
INNER JOIN citis
on customers.City_id=citis.id
WHERE product.price<@p


return @p



declare @pr int;
exec @pr= soal4 '100';
print @pr;
