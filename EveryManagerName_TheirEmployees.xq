for $x in doc ("Manager.xml")/Manager
order by $x/Employee.Name ascending
  for $c in doc("Employee.xml")/Employee
  where $x/string(Name) = $c/reportsTo/Manager/string(@name)
  return
  ("Manager:", $x/string(Name), "Has Employee:", $c, "")