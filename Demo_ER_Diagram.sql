Create DataBase Demo_ER_Daigram

--1. Create COUNTRY Table
Create Table COUNTRY(CountryId Int Identity Primary Key,
CountryName Varchar(30),Continent Varchar(10),Currency Varchar(3));

--2.Create DEPARTMENT Table
Create Table DEPARTMENT(DepartmentId Int Primary Key,
DeptName Varchar(30),CountryId Int Foreign Key	References dbo.COUNTRY(CountryId));

--3.Create EMPLOYEE Table
Create Table EMPLOYEE(EmployeeId Int Primary Key,
EmpName Varchar(20) NOT NULL,
DeptId Int Foreign Key References dbo.DEPARTMENT(DepartmentId)NULL);

--4.Create FOLDER Table
Create Table FOLDER(FolderId Int NOT NULL,
EmployeeId Int References EMPLOYEE(EmployeeId),
AccessType varchar(5) NULL);