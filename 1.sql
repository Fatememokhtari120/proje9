create procedure soal1
           @p nvarchar(50)
as
SELECT citis.name, customers.name
FROM customers INNER JOIN orders
on customers.ID=orders.customers_id
INNER JOIN product
on orders.Product_id=product.id
INNER JOIN citis
on customers.City_id=citis.id
WHERE product.name= @p ;

return @p



declare @pr int;
exec @pr= soal1 'iPhone 6s';
print @pr;
