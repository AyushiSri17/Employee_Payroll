--------------UC-1------------------
Create database Payroll_Services;
SELECT * FROM master.sys.databases;
Use Payroll_Services;

--------------UC-2------------------
Create table Employee_Payroll
(
Id int Identity(1,1) primary key,
Name varchar(100),
Salary float,
StartDate date
);