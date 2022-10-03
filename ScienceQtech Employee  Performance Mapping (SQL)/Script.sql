


--Creating a database named employee
Create Database Employee
use Employee


---Creating Tables with given columns in csv files

create table Project (
PROJECT_ID varchar(10) not null,
PROJ_NAME varchar(50) not null,	
DOMAIN varchar(50) not null,		
START_DATE date not null,
CLOSURE_DATE date not null,
DEV_QTR	varchar(10) not null,
STATUS varchar(50) not null
)

create table Employee_Record (
EMP_ID varchar(10) not null,
FIRST_NAME varchar(50) not null,
LAST_NAME varchar(50) not null,	
GENDER varchar(50) NOT NULL,
ROLE varchar(50) Not null,	
DEPT varchar(50) Not null,
EXPERIENCE	int not null,
COUNTRY	varchar(50) Not null,
CONTINENT varchar(50) Not null,	
SALARY	int not null,
EMP_RATING	int not null,
MANAGER_ID varchar(10) ,	
PROJ_ID varchar(10)
)

Create table DataScience_Team(
EMP_ID varchar(10) not null,
FIRST_NAME varchar(50) not null,	
LAST_NAME varchar(50) not null,
GENDER varchar(50) not null,
ROLE varchar(50) not null,	
DEPT varchar(50) not null,	
EXPERIENCE int not null,	
COUNTRY varchar(50) not null,	
CONTINENT varchar(50) not null
)

-------------------------Inserting Data

INSERT INTO Project
           (PROJECT_ID,PROJ_NAME,DOMAIN,START_DATE,CLOSURE_DATE,DEV_QTR,STATUS)
     VALUES
     ('P103','Drug Discovery','HEALTHCARE','4/6/2021','6/20/2021','Q1','DONE'),
     ('P105','Fraud Detection','FINANCE','4/11/2021','6/25/2021','Q1','DONE'),
     ('P109','Market Basket Analysis','RETAIL','4/12/2021','6/30/2021','Q1','DELAYED'),
     ('P204','Supply Chain Management','AUTOMOTIVE','7/15/2021','9/28/2021','Q2','WIP'),
     ('P302','Early Detection of Lung Cancer','HEALTHCARE','10/8/2021','12/18/2021','Q3','YTS'),
     ('P406','Customer Sentiment Analysis','RETAIL','7/9/2021','9/24/2021','Q2','WIP')

INSERT INTO Employee_Record
           (EMP_ID,FIRST_NAME,LAST_NAME,GENDER,ROLE,DEPT,EXPERIENCE,COUNTRY,CONTINENT,SALARY,EMP_RATING,MANAGER_ID,PROJ_ID)
     VALUES
('E001','Arthur','Black','M','President','All',20,'USA','North America',16500,5,null,null),
('E005','Eric','Hoffman','M','LEAD DATA SCIENTIST','FINANCE',11,'USA','NORTH AMERICA',8500,3,'E103','P105'),
('E010','William','Butler','M','LEAD DATA SCIENTIST','AUTOMOTIVE',12,'FRANCE','EUROPE',9000,2,'E428','P204'),
('E052','Dianna','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',6,'CANADA','NORTH AMERICA',5500,5,'E083','P103'),
('E057','Dorothy','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',9,'USA','NORTH AMERICA',7700,1,'E083','P302'),
('E083','Patrick','Voltz','M','MANAGER','HEALTHCARE',15,'USA','NORTH AMERICA',9500,5,'E001','NULL'),
('E103','Emily','Grove','F','MANAGER','FINANCE',14,'CANADA','NORTH AMERICA',10500,4,'E001','NULL'),
('E204','Karene','Nowak','F','SENIOR DATA SCIENTIST','AUTOMOTIVE',8,'GERMANY','EUROPE',7500,5,'E428','P204'),
('E245','Nian','Zhen','M','SENIOR DATA SCIENTIST','RETAIL',6,'CHINA','ASIA',6500,2,'E583','P109'),
('E260','Roy','Collins','M','SENIOR DATA SCIENTIST','RETAIL',7,'INDIA','ASIA',7000,3,'E583','NA'),
('E403','Steve','Hoffman','M','ASSOCIATE DATA SCIENTIST','FINANCE',4,'USA','NORTH AMERICA',5000,3,'E103','P105'),
('E428','Pete','Allen','M','MANAGER','AUTOMOTIVE',14,'GERMANY','EUROPE',11000,4,'E001','NULL'),
('E478','David','Smith','M','ASSOCIATE DATA SCIENTIST','RETAIL',3,'COLOMBIA','SOUTH AMERICA',4000,4,'E583','P109'),
('E505','Chad','Wilson','M','ASSOCIATE DATA SCIENTIST','HEALTHCARE',5,'CANADA','NORTH AMERICA',5000,2,'E083','P103'),
('E532','Claire','Brennan','F','ASSOCIATE DATA SCIENTIST','AUTOMOTIVE',3,'GERMANY','EUROPE',4300,1,'E428','P204'),
('E583','Janet','Hale','F','MANAGER','RETAIL',14,'COLOMBIA','SOUTH AMERICA',10000,2,'E001','NULL'),
('E612','Tracy','Norris','F','MANAGER','RETAIL',13,'INDIA','ASIA',8500,4,'E001','NULL'),
('E620','Katrina','Allen','F','JUNIOR DATA SCIENTIST','RETAIL',2,'INDIA','ASIA',3000,1,'E612','P406'),
('E640','Jenifer','Jhones','F','JUNIOR DATA SCIENTIST','RETAIL',1,'COLOMBIA','SOUTH AMERICA',2800,4,'E612','P406'),


INSERT INTO DataScience_Team
           (EMP_ID ,FIRST_NAME ,LAST_NAME ,GENDER ,ROLE ,DEPT ,EXPERIENCE ,COUNTRY ,CONTINENT)
     VALUES ('E005','Eric','Hoffman','M','LEAD DATA SCIENTIST','FINANCE',11,'USA','NORTH AMERICA'),
('E010','William','Butler','M','LEAD DATA SCIENTIST','AUTOMOTIVE',12,'FRANCE','EUROPE'),
('E052','Dianna','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',6,'CANADA','NORTH AMERICA'),
('E057','Dorothy','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',9,'USA','NORTH AMERICA'),
('E204','Karene','Nowak','F','SENIOR DATA SCIENTIST','AUTOMOTIVE',8,'GERMANY','EUROPE'),
('E245','Nian','Zhen','M','SENIOR DATA SCIENTIST','RETAIL',6,'CHINA','ASIA'),
('E260','Roy','Collins','M','SENIOR DATA SCIENTIST','RETAIL',7,'INDIA','ASIA'),
('E403','Steve','Hoffman','M','ASSOCIATE DATA SCIENTIST','FINANCE',4,'USA','NORTH AMERICA'),
('E478','David','Smith','M','ASSOCIATE DATA SCIENTIST','RETAIL',3,'COLOMBIA','SOUTH AMERICA'),
('E505','Chad','Wilson','M','ASSOCIATE DATA SCIENTIST','HEALTHCARE',5,'CANADA','NORTH AMERICA'),
('E532','Claire','Brennan','F','ASSOCIATE DATA SCIENTIST','AUTOMOTIVE',3,'GERMANY','EUROPE'),
('E620','Katrina','Allen','F','JUNIOR DATA SCIENTIST','RETAIL',2,'INDIA','ASIA'),
('E640','Jenifer','Jhones','F','JUNIOR DATA SCIENTIST','RETAIL',1,'COLOMBIA','SOUTH AMERICA');

----------------------------

----Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and DEPARTMENT from the employee record table, and make a list of employees and details of their department.

select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT  from Employee_Record

--Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPARTMENT, and EMP_RATING if the EMP_RATING is 
--Less than two

select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING  from Employee_Record
where EMP_RATING<2

--Greater than four 

select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING  from Employee_Record
where EMP_RATING>4

--Between two and four

select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING  from Employee_Record
where EMP_RATING between 2 and 4

--Write a query to concatenate the FIRST_NAME and the LAST_NAME of employees in the Finance department from the employee table and then give the resultant column alias as NAME.

select CONCAT(FIRST_NAME,' ',LAST_NAME) as Name from Employee_Record
where DEPT='FINANCE'

--Write a query to list only those employees who have someone reporting to them. Also, show the number of reporters (including the President)

select e1.EMP_ID,e1.FIRST_NAME,e1.LAST_NAME,count(e1.EMP_id) as Number_of_Employees from Employee_Record e1
inner join Employee_Record e2 on e1.EMP_ID=e2.MANAGER_ID
group by e1.FIRST_NAME,e1.LAST_NAME,e1.EMP_ID

--Write a query to list down all the employees from the healthcare and finance departments using union. Take data from the employee record table.
select EMP_ID,FIRST_NAME,LAST_NAME,DEPT from Employee_Record 
where DEPT='HEALTHCARE'
UNION
select EMP_ID,FIRST_NAME,LAST_NAME,DEPT from Employee_Record 
where DEPT='FINANCE'

--Write a query to list down employee details such as EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPARTMENT, and EMP_RATING grouped by dept. 
--Also include the respective employee rating along with the max emp rating for the department.
SELECT EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPT,EMP_RATING, max(EMP_RATING) OVER (PARTITION BY DEPT) AS MAXRATING
FROM Employee_Record;


--Write a query to calculate the minimum and the maximum salary of the employees in each role. Take data from the employee record table
select ROLE,min(Salary) as Minimum_Salary,max(salary) as Maximum_Salary from Employee_record
Group by ROLE

--Write a query to assign ranks to each employee based on their experience. Take data from the employee record table.
Select EMP_ID,FIRST_NAME,LAST_NAME,EXPERIENCE,Dense_rank() over (order by EXPERIENCE desc ) as Rank
from Employee_Record

--Write a query to create a view that displays employees in various countries whose salary is more than six thousand. Take data from the employee record table. 
CREATE VIEW [Employees salary] AS
SELECT *
FROM Employee_Record
WHERE SALARY>6000;
select * from [Employees salary]


--Write a nested query to find employees with experience of more than ten years. Take data from the employee record table. 
select EMP_ID,FIRST_NAME,LAST_NAME,EXPERIENCE,DEPT from Employee_Record 
where EXPERIENCE in 
(select EXPERIENCE from Employee_Record where EXPERIENCE>10)

--Write a query to create a stored procedure to retrieve the details of the employees whose experience is more than three years. Take data from the employee record table.
CREATE PROCEDURE EMPDetails
AS
select * from Employee_Record where EXPERIENCE >3
exec EMPDetails


--Write a query using stored functions in the project table to check whether the job profile assigned to each employee 
--in the data science team matches the organization’s set standard.

/**For an employee with experience less than or equal to 2 years assign 'JUNIOR DATA SCIENTIST',

For an employee with the experience of 2 to 5 years assign 'ASSOCIATE DATA SCIENTIST',

For an employee with the experience of 5 to 10 years assign 'SENIOR DATA SCIENTIST',

For an employee with the experience of 10 to 12 years assign 'LEAD DATA SCIENTIST',

For an employee with the experience of 12 to 16 years assign 'MANAGER'.

**/

create Function returnrole(@exp int)
returns varchar(50)
as
begin
	declare @rolename varchar(50);
	if @exp<=2
		set @rolename='JUNIOR DATA SCIENTIST';
	else if @exp>2 and @exp<5
		set @rolename='ASSOCIATE DATA SCIENTIST'
	else if @exp>=5 and @exp<10
		set @rolename='SENIOR DATA SCIENTIST'
	else if @exp>=10 and @exp<12
		set @rolename='LEAD DATA SCIENTIST'
	else 
		set @rolename='MANAGER'
return @rolename
end;



--Write a query to calculate the bonus for all the employees, based on their ratings and salaries (Use the formula: 5% of salary * employee rating). 

select Emp_id,FIRST_NAME,LAST_NAME,ROLE,Salary,Emp_Rating,(SALARY*EMP_RATING) as Bonus from Employee_Record
order by Bonus desc

--Write a query to calculate the average salary distribution based on the continent and country. Take data from the employee record table.
select COUNTRY,CONTINENT,avg(salary) as Average_Salary from Employee_Record
group by COUNTRY,CONTINENT




