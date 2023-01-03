use company100k;
-- 0.016
select distinct fname, lname
from employee
join manages on manages.essn = employee.ssn
join department on department.dep_number = manages.dep_num
join dependent on dependent.essn = employee.ssn
where employee.GENDER = 'female'  and dependent.GENDER = 'female';

use company_sh_opt;
-- 0.0
select distinct fname, lname
from employee
join department on employee.ssn = department.essn
join dependent on dependent.essn = employee.ssn
where employee.GENDER = 'female'  and dependent.GENDER = 'female'