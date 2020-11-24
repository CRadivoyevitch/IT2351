use carltons_guitar_shop;

DROP TRIGGER IF EXISTS products_before_update;

DELIMITER // 

CREATE TRIGGER products_before_update
	BEFORE UPDATE ON products
    FOR EACH ROW
BEGIN
	DECLARE errorMessage varchar(255);
    SET errorMessage = CONCAT('Price not in appropriate range');
    IF new.list_price <100>1200 THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = errorMessage;
END IF;
END//


UPDATE products
SET list_price = 1300
WHERE product_id = 1;

SELECT list_price, product_id
FROM products
WHERE product_id = 1;


