# Executive Summary

# Database Administrator Responsibilities

The Database administrator is in charge of granting and restricting the privaledges of users, observing the activity that users are conducting, and maintaining the database to aid users.

# Log Files
 The Error Log hold information on what errors have occured when running code during the server time.

The General Query Log holds a record of things the platform is doing such as connecting, disconnecting, and what the queue is doing (connect, disconnect, queries)

The Slow Query Log holds SQL statements that take a long time to execute.
 
# Variables
 Explain the purpose of and provide an example of status and system variables
these variables show the settings of a database. Status variables provide counts on different aspects of the server regarding the project at hand such as Bytes_received (How many Bytes have ben received) or sort_rows (how many sorted rows are present). System variables provide counts on different aspects of the server and how it functions for the user/admin, such as delayed_queue_size (What size queue (in rows) should be allocated or handling INSERT DELAYED), and default_tmp_storage_engine (The default storage engine (table type) for TEMPORARY tables).

# Privileges


A. Explain the following code (copy and paste the code into your readme.md file and comment all sections):
CREATE USER guitar_admin@localhost IDENTIFIED BY 'pa55word';-------------------- An administrator was created with password "pa55word."
CREATE USER guitar_user@localhost IDENTIFIED BY 'pa55word';--------------------- A user was created with password "pa55word."

GRANT ALL
ON guitar.* 
TO guitar_admin@localhost;------------------------------------------------------The Administrator is able to use all commands.
GRANT SELECT, INSERT, UPDATE, DELETE
ON guitar.*
TO guitar_user@localhost;-------------------------------------------------------The User is able to use the SELECT, INSERT, UPDATE, DELETE commands.

B. What are the privilege levels that can be granted to a user?

  From greatest to smallest, user privaledges can be granted globally, to a specific database, to a specific table, or to a specific column.


C. How would this code change to grant column privileges to the
customer first_name, last_name and email_address? 
  This action would allow the customer to add their own data to the colomns regarding a first name, last name, and email address 

D. Why would you want to do this?
  Time is saved in this approach as the customer has access to add data about themselves, cutting out communication time between them relaying to someone else the information, and lowering potential for typos or incorrect information.

# Roles
 A. Create a role to provide update privileges to the categories table (either here in discussion format or in MySQL
Workbench)

 B. Grant privileges to the role and, assign users to the role (either here in discussion format or in MySQL
Workbench)

 C. Explain why roles would be useful.

# Conclusion 
