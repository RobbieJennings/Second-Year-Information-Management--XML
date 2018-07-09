for $x in doc("Broker.xml")/Broker
for $y in doc("Employee.xml")/Employee
where $x/(Broker.Years_Of_Service) > 5 or $y/(Years_Of_Service)> 5
return
("congratulations on ", $x/string(Broker.Years_Of_Service),"Years of service",$x, " ", "congratulations on ", $y/string(Years_Of_Service),"Years of service", $y, " ")