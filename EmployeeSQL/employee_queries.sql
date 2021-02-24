--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select e."Employee Number", e."Last_Name", e."First Name", e.Sex, s."Salary Amount"
from employee e, salary s
where e."Employee Number"=s."Employee ID"

--2. List first name, last name, and hire date for employees who were hired in 1986.
select "First Name", "Last_Name", "Hire Date"
from employee
where EXTRACT (Year From "Hire Date")=1986

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.ID, d."Department Name", m."Employee ID",e."First Name",e."Last_Name"
from employee e, manager m, department d
where d.ID= m."Department Number" and m."Employee ID"= e."Employee Number"

--4. List the department of each employee with the following information: employee number, last name, first name, 
--and department name.
select "Department Employee"."Employee ID", e."Last_Name",e."First Name",d."Department Name"
from employee e, "Department Employee", department d
where "Department Employee"."Department Number"=d.ID and e."Employee Number"="Department Employee"."Employee ID"

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select "First Name", "Last_Name", Sex
from employee
where "First Name" = 'Hercules' and "Last_Name" Like 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, 
--and department name.
select "Department Employee"."Employee ID", e."Last_Name",e."First Name",d."Department Name"
from employee e, "Department Employee", department d
where  e."Employee Number"="Department Employee"."Employee ID" 
and "Department Employee"."Department Number" = (select d.ID where d."Department Name"= 'Sales' )

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name,
--and department name.
select "Department Employee"."Employee ID", e."Last_Name",e."First Name",d."Department Name"
from employee e, "Department Employee", department d
where  e."Employee Number"="Department Employee"."Employee ID" 
and "Department Employee"."Department Number" = (select d.ID where d."Department Name"= 'Sales' 
												 or d."Department Name"= 'Development' )
order by d."Department Name" Desc

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select count("Last_Name"), "Last_Name"
from employee 
group by "Last_Name"


