
select fname 
from employee
join department on employee.works_for = department.dep_number
join project on department.dep_number = project.controling_dep
where project.proj_loc = "dummy"

