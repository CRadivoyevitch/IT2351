# Executive Summary
This Assignment required me primarily to understand how to normalize data and create a view. 
A Normalization more or less organizes data to a filtered and comprehensible set of separate tables so as to hold unique rows. There are three primary layers of Normalization before one can consider their data to be properly normalized. First requires cells with multiple entries to be edited so that each entry holds its own cell. From there data needs to be brought into separate tables so as to have no repeating cells bar the cells in the Primary Key. A foreign key is utilized to connect tables to one another.
A view is a virtual table based on the result-set of an SQL statement, per definition on W3Schools.com. (https://www.w3schools.com/sql/sql_view.asp) 


# Normailization/EER Model
## 1N
StudentID	 Student Name 	Address 		Email 		Class	 	Major
S1 		Joe Smith 	124 Main St.	 Joe@school.edu 	IT1025		Programming
S1 		Joe Smith 	124 Main St.	 Joe@school.edu		Math1200	Programming
S1 		Joe Smith 	124 Main St.	 Joe@school.edu		IT1050		Programming
S2		 Sue Brown 	345 Second St. 	Sue@school.edu 		IT1025		Programming
S2		 Sue Brown 	345 Second St. 	Sue@school.edu 		IT1050		Programming
S2		 Sue Brown 	345 Second St. 	Sue@school.edu 		IT2351 		Programming
S3 		Nick Green 	45 York Road 	Nick@school.edu 	1025 		Networking
S4 		Andy Andrews 	600 5th Ave. 	Andy@school.edu 	1025	 	Networking
S4 		Andy Andrews 	600 5th Ave.	 Andy@school.edu 	1050 		Networking
S5		Mark Jones	4 Lee road	Mark@school.edu		IT1025		Programming
S6		Slim Jim	East 99 st.	Slim@school.edu		Math1025	Networking	
S7		Bob Bob		63 Bob Ave.	Bob@school.edu		IT1050		Programming

### How N1 Form was achieved 
Changed Classes to 'Class' and made individual rows based on the class.

## 2N
Table: Student Info
Student ID	Student Name	Address		Email
S1		Joe Smith	124 Main St.	Joe@school.edu
S2		Sue Brown	345 Second St.	Sue@school.edu
S3		Nick Green	45 York Road 	Nick@school.edu
S4		Andy Andrews	600 5th Ave.	Andy@school.edu
S5		Mark Jones	4 Lee road	Mark@school.edu
S6		Slim Jim	East 99 st.	Slim@school.edu	
S7		Bob Bob		63 Bob Ave.	Bob@school.edu
Table: Major registration
Major		Student ID
Programming	S1
Programming	S2
Programming	S5
Programming	S7
Networking	S3
Networking	S4
Networking	S6

Table:Major classes
Major		Class ID
Programming	IT1025
Programming	Math1200
Programming	IT1050
Programming	IT2351
Networking	1025
Networking	1050

### How N2 Form was Achieved
Student information is unique to student ID, so a table holding that information was creatable.
The Class ID and Major colomns held repeated values.

## 3N
### How N3 Form was Achieved
Identified Primary Keys and Foreign Keys for each table.

Student info: Primary-Email, Foreign-Student ID
Major Registration: Primary-Major, Foreign-Student ID
Major Classes: Primary-major, Foreign-Class ID


# Conclusion
In order to create the proper tables needed for normalization, I am reticent to state that there was a constant looking back to the various resources provided. Normalization appears to be a quality standard to any person looking to make their own tables, so it is important to train a mindset to perform it correctly. I am not certain yet how I will incorporate views into my future plans, but assume as with the other topics covered in this course, it is an essential fundamental to any MySQL programmers toolkit. 
