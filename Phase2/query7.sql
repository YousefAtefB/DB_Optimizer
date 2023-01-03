select  DEPENDENT_NAME 
from dependent
join employee on employee.ssn = dependent.ESSN
join department on department.dep_number = employee.works_for
where department.dep_name = "tfdxeafftatcjuajl"
-- .688 without
-- .015 WITH CAHE
