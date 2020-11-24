
# Executive Summary

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



#Conclusion
