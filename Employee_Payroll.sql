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

----------------UC-3-----------------
insert into Employee_Payroll values('Ayushi',107321,'2021-04-01');
insert into Employee_Payroll values('Anjuli',96671,'2013-05-10');
insert into Employee_Payroll values('Vasu',126781,'2019-03-01');
insert into Employee_Payroll (Salary, Name, StartDate) values (465789, 'Raju', getdate());
insert into Employee_PayRoll (Salary, Name, startDate) values (12346, 'Ram', GETDATE());


