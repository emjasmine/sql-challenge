Create Table Department(
ID VARCHAR Primary Key Not Null,
"Department Name" VARCHAR)

Create table Title (
ID VARCHAR Primary Key Not Null,
Title VARCHAR)

Create table Employee(
"Employee Number" Integer Primary Key Not Null,
"Employee Title ID" VARCHAR,
Foreign Key ("Employee Title ID") references Title(ID),
"Birth Date" date,
"First Name" VARCHAR,
"Last_Name" VARCHAR,
Sex VARCHAR,
"Hire Date" date)

Create Table Manager(
"Employee ID" Integer Not NUll,
"Department Number" VARCHAR Not Null,
Primary Key ("Employee ID", "Department Number"),
Foreign Key ("Employee ID") references Employee("Employee Number"),
Foreign Key ("Department Number") references Department(ID))

Create table "Department Employee"(
"Employee ID" Integer Not Null,
"Department Number" VARCHAR,
Primary Key ("Employee ID", "Department Number"),
Foreign Key ("Employee ID") references Employee("Employee Number"),
Foreign Key ("Department Number") references Department(ID))

Create table Salary(
"Employee ID" Integer Primary Key Not Null,
Foreign Key ("Employee ID") references Employee("Employee Number"),
"Salary Amount" Integer)
