CREATE DATABASE COMPANY;
USE COMPANY;

CREATE TABLE Employee(
	SSN INT NOT NULL AUTO_INCREMENT,
    FName VARCHAR(50),
    LName VARCHAR(50),
    SALARY INT,
    GENDER VARCHAR(10),
    BDATE DATE,
    ADDRESS VARCHAR(200),
	
    SUPERVISOR INT,
    
    WORKS_FOR INT,
    
    PRIMARY KEY(SSN),
    CONSTRAINT FK_SUPERVISOR FOREIGN KEY(SUPERVISOR) REFERENCES EMPLOYEE(SSN)
);

CREATE TABLE DEPARTMENT(
	DEP_NAME VARCHAR(200),
    DEP_NUMBER INT NOT NULL,
    LOCATION VARCHAR(200),
	PRIMARY KEY(DEP_NUMBER)
);

ALTER TABLE EMPLOYEE
ADD FOREIGN KEY (WORKS_FOR) REFERENCES DEPARTMENT(DEP_NUMBER);

CREATE TABLE MANAGES(
	ESSN INT,
    DEP_NUM INT,
    START_DATE DATE,
    
	CONSTRAINT FK_EMBPLOYEE_MANAGER FOREIGN KEY(ESSN) REFERENCES EMPLOYEE(SSN),
    CONSTRAINT FK_DEP_MANAGER FOREIGN KEY(DEP_NUM) REFERENCES DEPARTMENT(DEP_NUMBER),
    
    CONSTRAINT PK_MANAGES PRIMARY KEY(ESSN, DEP_NUM)
);

CREATE TABLE Project(
	PROJ_NAME VARCHAR(50),
    PROJ_LOC VARCHAR(200),
    PNO INT NOT NULL AUTO_INCREMENT,
    CONTROLING_DEP INT, -- FOR CONTROLS RELATIONSHIP
    PRIMARY KEY(PNO),
    
    CONSTRAINT FK_PROJ_DEP FOREIGN KEY(CONTROLING_DEP) REFERENCES DEPARTMENT(DEP_NUMBER)
);
CREATE TABLE WORKS_ON(
	ESSN INT NOT NULL,
    PROJECT_NUMBER INT NOT NULL,
	HOURS INT,

    CONSTRAINT FK_EMBPLOYEE_WORKS_ON FOREIGN KEY(ESSN) REFERENCES EMPLOYEE(SSN),
    CONSTRAINT FK_PROJECT_WORKS_ON FOREIGN KEY(PROJECT_NUMBER) REFERENCES PROJECT(PNO),
    
    CONSTRAINT PK_EMP_PROJ PRIMARY KEY(ESSN, PROJECT_NUMBER)
);
CREATE TABLE Dependent(
	DEPENDENT_NAME VARCHAR(200),
    GENDER VARCHAR(10),
    BIRTHDATE DATE,
    RELATIONSHIP VARCHAR(20), -- FATHER/MOTHER..
    ESSN INT,
    
    CONSTRAINT FK_DEPENDENT_EMPLOYEE FOREIGN KEY(ESSN) REFERENCES EMPLOYEE(SSN)
);
CREATE TABLE Customer(
	CUSTOMER_ID INT NOT NULL AUTO_INCREMENT,
    EMAIL VARCHAR(200),
    CUSTOMER_NAME VARCHAR(50),
    PHONE_NUMBER VARCHAR(20),
    
    PRIMARY KEY(CUSTOMER_ID)
);
CREATE TABLE CUSTOMER_PROJECT(
	CUSTOMER_ID INT NOT NULL,
    PROJECT_NUMBER INT NOT NULL,
    DEADLINE DATE,
    
    CONSTRAINT FK_CP_CUSTOMER FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID),
    CONSTRAINT FK_CP_PROJECT FOREIGN KEY(PROJECT_NUMBER) REFERENCES PROJECT(PNO),
    
    CONSTRAINT PK_EMP_PROJ PRIMARY KEY(CUSTOMER_ID, PROJECT_NUMBER)
	
);