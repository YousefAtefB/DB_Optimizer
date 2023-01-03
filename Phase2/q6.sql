
select email 
from customer
join customer_project on customer.id = customer_project.customer_id
join project on customer_project.project_number = project.proj_number
join department on project.controling_dep = department.dep_number
where department.dep_name = "dummy"