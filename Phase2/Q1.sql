-- first name and last name of male employees where salary > 10000 and have a female dependents and don't manage a department

select FName, LName
from employee, dependent, department
where salary > 10000 and dependent.ESSN = employee.SSN