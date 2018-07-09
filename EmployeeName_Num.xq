for $c in doc ("Employee.xml")/Employee
order by $c/Employee_Num ascending
return
("Employee Name:",$c/string(Name), "Number:", $c/string(Employee_Num), "")