use company;

-- department
LOAD DATA LOCAL INFILE 'D:/DB_fillers/department.csv' INTO TABLE department
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
(DEP_NUMBER, DEP_NAME, LOCATION);
select count(*) from department;
select * from department;

-- employee
LOAD DATA LOCAL INFILE 'D:/DB_fillers/employee.csv' INTO TABLE employee
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
(SSN, FName, LName, SALARY, GENDER, BDATE, ADDRESS, SUPERVISOR, WORKS_FOR);
select count(*) from employee;
select * from employee;

-- manages
LOAD DATA LOCAL INFILE 'D:/DB_fillers/manages.csv' INTO TABLE manages
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
(ESSN, DEP_NUM, START_DATE);
select count(*) from manages;
select * from manages;

-- project
LOAD DATA LOCAL INFILE 'D:/DB_fillers/project.csv' INTO TABLE project
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
(PROJ_NAME, PROJ_LOC, PNO, CONTROLING_DEP);
select count(*) from project;
select * from project;

-- works_on
LOAD DATA LOCAL INFILE 'D:/DB_fillers/works_on.csv' INTO TABLE works_on
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
(ESSN, PROJECT_NUMBER, HOURS);
select count(*) from works_on;
select * from works_on;

-- dependent
LOAD DATA LOCAL INFILE 'D:/DB_fillers/dependent.csv' INTO TABLE dependent
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
(DEPENDENT_NAME, GENDER, BIRTHDATE, RELATIONSHIP, ESSN);
select count(*) from dependent;
select * from dependent;

-- customer
LOAD DATA LOCAL INFILE 'D:/DB_fillers/customer.csv' INTO TABLE customer
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
(CUSTOMER_ID, EMAIL, CUSTOMER_NAME, PHONE_NUMBER);
select count(*) from customer;
select * from customer;

-- customer_project
LOAD DATA LOCAL INFILE 'D:/DB_fillers/customer_project.csv' INTO TABLE customer_project
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
(CUSTOMER_ID, PROJECT_NUMBER, DEADLINE);
select count(*) from customer_project;
select * from customer_project;
