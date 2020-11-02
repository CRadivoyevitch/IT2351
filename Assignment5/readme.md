# Executive Summary

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
Changed Classes to 'Class' and made individual rows based on the class. 1st

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
