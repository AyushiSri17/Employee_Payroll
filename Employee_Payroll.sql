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

----------------UC-4-----------------
select * from Employee_Payroll;

----------------UC-5-----------------
select * from Employee_PayRoll where Name='Raju';
select * from Employee_Payroll where StartDate BETWEEN '2020-01-01' AND getdate();
select * from Employee_Payroll where StartDate between CAST('2023-01-01' as date) and GETDATE(); /*Cast method is used for conversion*/

----------------UC-6-----------------

ALTER TABLE Employee_Payroll ADD Gender char(1);
UPDATE Employee_Payroll SET Gender = 'M' where Name = 'Vasu' or Name = 'Raju' or Name = 'Ram';
UPDATE Employee_Payroll set Gender = 'F' where Name = 'Ayushi' or Name = 'Anjuli';

----------------UC-7------------------
select Count(Id) As NumOfEmployee from Employee_Payroll;
select Count(Id) As NumOfEmployee, Gender from Employee_Payroll group by Gender;
select Sum(Salary) As TotalSalary from Employee_Payroll;
select Sum(Salary) As TotalSalary, Gender from Employee_Payroll group by Gender;
select Max(Salary) As maxSalary from Employee_Payroll;
select Max(Salary) As maxSalary, Gender from Employee_Payroll group by Gender;
select Min(Salary) As minSalary, Gender from Employee_Payroll group by Gender;
select Min(Salary) As minSalary from Employee_Payroll;
select Avg(Salary) As avgSalary, Gender from Employee_Payroll group by Gender;
select Avg(Salary) As avgSalary from Employee_Payroll;