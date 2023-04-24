SELECT StoreLocation, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Group by StoreLocation
Order by TotalAbsentHours DESC

Select *
From [dbo]. MFGEmployees4$

SELECT DepartmentName, StoreLocation, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Group by DepartmentName, StoreLocation
Order by TotalAbsentHours DESC

SELECT JobTitle, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Group by JobTitle
Order by TotalAbsentHours DESC

SELECT DepartmentName, StoreLocation, JobTitle, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Group by DepartmentName, StoreLocation, JobTitle
Order by TotalAbsentHours DESC

SELECT Gender, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Group by Gender
Order by TotalAbsentHours DESC

SELECT DepartmentName, StoreLocation, JobTitle, Gender, SUM(AbsentHours) as TotalAbsentHours
FROM [dbo].[MFGEmployees4$]
Group by DepartmentName, StoreLocation, JobTitle, Gender
Order by TotalAbsentHours DESC

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

Select MAX(Absenthours) as Maxhours, Min(Absenthours) as Minhours
From [dbo].[MFGEmployees4$]

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