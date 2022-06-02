create procedure soal2
           @p nvarchar(50)
as
SELECT product.price,product.nameFROM customers INNER JOIN orders
on customers.ID=orders.customers_id
INNER JOIN product
on orders.Product_id=product.id
INNER JOIN citis
on customers.City_id=citis.id

WHERE customers.Name=@p 

return @p



declare @pr int;
exec @pr= soal2 'Mahdi Sadeghi';
print @pr;
