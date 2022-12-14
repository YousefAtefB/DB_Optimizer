use company;
LOAD DATA LOCAL INFILE 'D:/CMP/CMP4/ADB/DB_Optimizer/Phase1/data.csv' INTO TABLE employee
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
(FName,LName, SALARY,GENDER ,BDATE ,ADDRESS);
select count(*) from employee;
select * from employee;
