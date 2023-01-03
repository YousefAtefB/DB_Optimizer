-- DROP INDEX employee_name2 ON employee;
create index employee_name using BTREE on employee(fname);

select * from department 
where dep_number in(
    select works_for from employee use index (employee_name) where fname = "Alaina"
)
and dep_number in (
    select controling_dep from project group by CONTROLING_DEP having count(*) > 1
)