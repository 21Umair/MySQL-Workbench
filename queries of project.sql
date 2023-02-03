use project;
-- describe employee;
-- insert into employee value (101,'Abdullah','2022-12-09',10000,'USD','Salesman');
-- insert into employee value (102,'Umair','2022-12-09',12000,'USD','IT Manager');
-- insert into employee value (103,'Ali','2022-12-09',14000,'USD','Accountant');
-- insert into employee value (104,'Gohar','2022-12-09',18000,'USD','Account Officer');

-- insert into employee value (113,'Ahmer','2022-12-09',22000,'USD','Salesman');
-- insert into employee value (114,'Ammar','2022-12-09',23000,'USD','Salesman');

-- insert into employee value (105,'Ahmed','2019-12-01',10000,'USD','Front End Developer');
-- insert into employee value (106,'Muhammad','2019-12-01',22000,'USD','UI/UX Designer');
-- insert into employee value (107,'Taha','2019-12-01',14000,'USD','Project Manager');
-- insert into employee value (108,'Hassaan','2019-12-01',18000,'USD','Project Assistant');

-- insert into employee value (109,'Ismail','2016-12-12',12000,'USD','Establishment Officer');
-- insert into employee value (110,'Musa','2016-12-12',30000,'USD','Full Stack Developer');
-- insert into employee value (111,'Waleed','2016-12-12',22000,'USD','QA Assistant');
-- insert into employee value (112,'Sohaib','2016-12-12',14000,'USD','QA Manager');
-- insert into employee value (113,'Wajahat','2016-12-12',14000,'USD','Section Assistant');

-- DELETE from employee;

-- describe sales;


-- ALTER Table employee add employee_email VARCHAR(45);
-- ALTER Table employee drop employee_email;
-- ALTER Table employee modify Employee_Name VARCHAR(50);
 -- ALTER table employee rename column Employee_ID to E_ID;
 
-- SELECT * from employee where Salary >= 20000;
-- SELECT * from employee where Salary between 20000 and 30000;
-- SELECT * from employee where E_ID in (101,105,112);
-- SELECT Employee_Name from employee where Employee_Name like 'S%';
-- SELECT * from employee where salary >=10000  and Employee_Name like 'M%';
-- SELECT * from employee where salary >=20000  or Employee_Name like 'M%';


-- update employee set Job_title = 'Section head' where E_ID = 111;
-- SELECT * from employee where E_ID in (111);

-- delete from employee where E_ID = 113;

-- SELECT avg(Salary),min(Salary),max(Salary),sum(Salary) from employee where Hire_date between '2022-12-08' and sysdate();
-- SELECT avg(Salary) from employee group by Hire_date;
-- SELECT Hire_date, max(Salary) from employee group by Hire_date HAVING max(Salary) > 18000;
-- SELECT Hire_date, sum(Salary) from employee where Job_title like 'S%' group by Hire_date HAVING sum(Salary) > 18000 order by sum(Salary);
-- delete from product;

-- ALTER Table product add E_ID int;

-- insert into product value(10, 'GALA', 'yes', 40,'USD', 50, 111);
-- insert into product value(12, 'Prince', 'yes', 40,'USD', 50, 112);
-- insert into product value(13, 'Rio', 'yes', 40,'USD', 50, 113);
-- insert into product value(11, 'Super', 'yes', 40,'USD', 50, 111);
-- insert into product value(14, 'Tiffany', 'yes', 210,'USD', 50, 113);
-- insert into product value(15, 'OREO', 'yes', 40,'USD', 50, 112);

-- SELECT * from employee cross join product;
-- SELECT * from employee natural join product;
-- SELECT * from employee, product where product.E_ID = employee.E_ID ;


-- SELECT * from product;
-- SELECT * from employee;

-- Describe product;
-- Describe employee;