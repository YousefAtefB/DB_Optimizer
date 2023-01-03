drop PROCEDURE GetDepName;

DELIMITER $$
CREATE PROCEDURE GetDepName()
BEGIN
    select email 
	from customer
	join customer_project on customer.customer_id = customer_project.customer_id
	join project on customer_project.project_number = project.pno
	join department on project.controling_dep = department.dep_number
	where department.dep_name = "mtovboufvrdnrcqkar";
END$$
DELIMITER ;