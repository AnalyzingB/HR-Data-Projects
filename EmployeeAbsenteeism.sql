/* Skills used Aggregate Functions, Group By, Order By, Having, Round, As */

-- Review data in table

Select *
From [dbo]. MFGEmployees4$

--Absent Hours by Store location

SELECT StoreLocation, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Group by StoreLocation
Order by TotalAbsentHours DESC

--Absent Hours by Department in Store Locations

SELECT DepartmentName, StoreLocation, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Group by DepartmentName, StoreLocation
Order by TotalAbsentHours DESC

--Absent Hours by Job Title

SELECT JobTitle, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Group by JobTitle
Order by TotalAbsentHours DESC

--Absent Hours by Department, Store, and Job Title

SELECT DepartmentName, StoreLocation, JobTitle, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Group by DepartmentName, StoreLocation, JobTitle
Order by TotalAbsentHours DESC

--Absent Hours by Gender

SELECT Gender, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Group by Gender
Order by TotalAbsentHours DESC

--Absent Hours by Store Location and Gender
SELECT StoreLocation, Gender, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Group by StoreLocation, Gender
Order by TotalAbsentHours DESC

SELECT DepartmentName, StoreLocation, JobTitle, Gender, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Group by DepartmentName, StoreLocation, JobTitle, Gender
Order by TotalAbsentHours DESC

--Using ROUND to round Age and Length of Service to 0 decimal places 

SELECT ROUND(AGE, 0) as Roundage, ROUND(LengthService, 0) as Roundservice
FROM [dbo].[MFGEmployees4$]
Group by ROUND(Age, 0), ROUND(LengthService, 0)

SELECT ROUND(AGE, 0) as Roundage, AVG(LengthService)
FROM [dbo].[MFGEmployees4$]
Group by ROUND(Age, 0)

SELECT ROUND(AGE, 0) as Roundage, AVG(AbsentHours) as Avghours
FROM [dbo].[MFGEmployees4$]
Group by Age
Order by Avghours DESC

SELECT ROUND(AGE, 0) as Roundage, Gender, AVG(AbsentHours) as Avghours
FROM [dbo].[MFGEmployees4$]
Group by ROUND(Age, 0), Gender
Order by Avghours DESC

SELECT ROUND(LengthService, 0) as Roundservice, AVG(AbsentHours) as Avghours
FROM [dbo].[MFGEmployees4$]
Group by Round(LengthService, 0)
Order by Avghours DESC

--Maximum and Minimum of Absent Hours

Select MAX(Absenthours) as Maxhours, Min(Absenthours) as Minhours
From [dbo].[MFGEmployees4$]

Select MAX(Absenthours) as Maxhours, Min(Absenthours) as Minhours, Gender
From [dbo].[MFGEmployees4$]
Group by Gender

Select DepartmentName, SUM(AbsentHours) as TotalHours
From [dbo].[MFGEmployees4$]
Group by DepartmentName
Having SUM(AbsentHours) > 0
Order by TotalHours DESC

Select DepartmentName, Gender, SUM(AbsentHours) as TotalHours
From [dbo].[MFGEmployees4$]
Group by DepartmentName, Gender
Having SUM(AbsentHours) > 0
Order by TotalHours DESC

SELECT StoreLocation, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Where Age > 30
Group by StoreLocation
Order by TotalAbsentHours DESC

SELECT DepartmentName, StoreLocation, JobTitle, Gender, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Where Age >= 45
Group by DepartmentName, StoreLocation, JobTitle, Gender
Order by TotalAbsentHours DESC