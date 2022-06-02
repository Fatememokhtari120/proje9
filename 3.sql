create procedure soal3
           @p nvarchar(50)
as
SELECT  orders.date
FROM customers INNER JOIN orders
on customers.ID=orders.customers_id
INNER JOIN product
on orders.Product_id=product.id
INNER JOIN citis
on customers.City_id=citis.id
WHERE citis.name=@p


return @p



declare @pr int;
exec @pr= soal3 'Tehran';
print @pr;
