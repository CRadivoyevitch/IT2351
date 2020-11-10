use carltons_guitar_shop;
drop procedure if exists ProductReCount;
DELIMITER //
create procedure ProductReCount()
BEGIN
DECLARE count_of_18 DECIMAL(10,2);

select count(product_id) 
into count_of_18
from products;
IF count_of_18 >= 18 THEN
	SELECT 'The number of products is greater than or equal to 18' AS message;
ELSE
	SELECT 'The number of products is less than 18' AS message;
end if;
end//

call ProductReCount();




