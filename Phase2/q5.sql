select distinct fname 
from employee
join department on employee.works_for = department.dep_number
join project on department.dep_number = project.controling_dep
where project.proj_loc = "qpfsmairluc"

select fname 
from employee
join department on employee.works_for = department.dep_number
join project on department.dep_number = project.controling_dep and project.proj_loc = "qpfsmairluc"


select distinct customer_id, first_name  
from (select * from customers cross join orders cross join shippings)

select distinct fname
from (select * from employee cross join department cross join project) as t
where t.works_for = t.dep_number and t.dep_number = t.controling_dep and t.proj_loc = "qpfsmairluc"


---------------------------------------------------------------------------------

-- with query opt 0.157
select distinct fname 
from employee
join department on employee.works_for = department.dep_number
join project on department.dep_number = project.controling_dep
where project.proj_loc = "cehiwxhzelrcno" and (employee.lname='Tyneshia' or salary > 10000) 

-- with no query opt 15.578
select distinct fname 
from 
(
    (
        select * 
        from employee
        where employee.lname='Tyneshia'
    )
    union
    (
        select * 
        from employee
        where employee.salary > 10000
    )
) as s
join department on s.works_for = department.dep_number
join project on department.dep_number = project.controling_dep
where project.proj_loc = "cehiwxhzelrcno"


