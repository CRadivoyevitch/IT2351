
# Executive Summary

These assignments were designed to test one's understanding of triggers, stored programs, and events. These allow for one to manipulate tables at time-intervals, upon a key phrase being called upon, and in ways more complicated than the UPDATE, INSERT, DELETE actions.

Not covered in the assignments was the use of locks, which freezes a table from being manipulated. This is effective primarily in environments where multiple users are accessing and manipulaitng the table data, so it is understandable that its utilization would be difficult to perform in this current class scenario.

# Stored Programs

## 1
I would utilize the 'Delete From' feature in the stored program, where the ID is equal to the customer ID inputed.
If there is not a customer of that name, a statement would show saying "This customer was not found."

>>USE [Database]

>>GO

>>CREATE PROCEDURE [dbo].[delete.customer]

>>@ID int

>>AS

>>IF EXISTS

>>DELETE FROM [dbo].[table_utilized]

>>WHERE ChosenId = @ID

>>DELETE FROM [dbo].[table_utilized]

>>WHERE Id =@ID

>>ELSE

>>print 'This customer was not found.'


>>GO

## 2
I created a trigger which brought up an error message when the updated price of a product was too high or low. I then tested the activity to see if the code went through.

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






    




## 3(a)
Event timer: Inventory management
In order to determine day-to-day logistics on ingredients, the baker must have their system updated on a daily basis. In creating an event timer to update their tables at closing, the baker can save time calculating needs, and the logistics company can get an immediate concept of what is demanded of them in a manner early enough to send supplies in a timely manner. As those working in the office-end will likely have a different schedule to the baker, having an event timer will bridge the gap on communication between the two counterparties. The table would be updated by adding a new row with the date and inventory amount for each item.

CREATE EVENT EOD_Inventory_Update;

ON SCHEDULE EVERY 1 DAY

STARTS '2020-12-01 15:30:00'

DO BEGIN

INSERT INTO [daily_inventory_table]

SELECT CAST (GetDate() as DATE),

SUM(CASE WHEN Status = 'item_1' THEN 1 ELSE 0 END) as item1

SUM(CASE WHEN Status = 'item_2' THEN 1 ELSE 0 END) as item2,

SUM(CASE WHEN Status = 'item_3' THEN 1 ELSE 0 END) as item3,

SUM(CASE WHEN Status = 'item_4' THEN 1 ELSE 0 END) as item

FROM InventoryTable



# Conclusion

Understanding the implementation of these techniques was not a challenge, however it was vital that I practiced their usage to get a proper grasp of how to format an approach. Activity was not as simple as just adding data from nowhere. To accomplish the real-life scenarios provided I needed to think more abstract on how to accomplish the task at hand. I find the need for locks to be large when dealing with a high traffic database as an admin, and the use of triggers will make more complex data manipulation easier for the programmer to comprehend.
