-- Select all info of departments that have employees with name="dummy"
        -- that control #projects > 1 
create index employee_name using BTREE on employee(fname);

select * from department 
where dep_number in(
    select works_for from employee use index (employee_name) where fname = "Alaina"
)
and dep_number in (
    select controling_dep from project group by CONTROLING_DEP having count(*) > 1
)

create index employee_name using hash on employee(fname);
select * from department 
where dep_number in(
    select works_for from employee where fname = "Alaina"
)
and dep_number in (
    select controling_dep from project group by CONTROLING_DEP having count(*) > 1
)

-- Select * from Department 
--     where DEP_NUMBER in 
--     (Select WORKS_FOR from Employee where SSN in
--         (Select ESSN from Manages) group by WORKS_FOR having count(*) > 10) 
--     and DEP_NUMBER in
--         (Select CONTROLING_DEP from Project group by CONTROLING_DEP having count(*) > 1)

-- select department data after joining all tables
select * from Department join Employee on Department.DEP_NUMBER = Employee.WORKS_FOR

(select * from Project join Department
 on Project.CONTROLING_DEP = Department.DEP_NUMBER 
 group by CONTROLING_DEP having count(*) > 1)


--------------------------------------------------------------------------

-- No index 0.047
-- DROP INDEX employee_name ON employee;
select * from department 
where dep_number in(
    select works_for from employee use index (employee_name) where fname = "Alaina"
)
and dep_number in (
    select controling_dep from project group by CONTROLING_DEP having count(*) > 1
)


-- With index 0.015
create index employee_name using BTREE on employee(fname);

select * from department 
where dep_number in(
    select works_for from employee use index (employee_name) where fname = "Alaina"
)
and dep_number in (
    select controling_dep from project group by CONTROLING_DEP having count(*) > 1
)
