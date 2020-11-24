# Executive Summary
When working with a team there is a demand that heirarchy is built and held. having a manager or administrator to observe users provides stability and communication to team members, and association to specific roles allows users to hone their duties efficiently. Being able to understand the system itself is important for both user and administrator as it will reduce time spent solving issues.
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
 A. Create a role to provide update privileges to the categories table
 
 B. Grant privileges to the role and, assign users to the role
 

CREATE ROLE 'Category_updater';

GRANT UPDATE ON carltons_guitar_shop.categories TO 'Category_updater';

CREATE USER 'updater1' Identified by 'updater1pass';

GRANT 'Category_updater' TO 'updater1';


C. Explain why roles would be useful.

Providing roles gives a user a clear path to where and how they are able to manipulate data. This is useful when dealing with sensitive information or when users are prone to mistakes due to complex systems and near-similar table or colomn names. It can also help to narrow avenues of improvement when problem solving in human resources.

# Conclusion 

As this assignment was more focused on the role an administrator would play in a Mysql team, activity had much to do with interface comprehension and less regarding data manipulation. Assuming I find myself growing a data analytic operation to the point where having underlings is required, or opening the platform to where users would edit their own personal information, the ability to create and dictate power to the users will be vital in my success.

