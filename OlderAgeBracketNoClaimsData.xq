for $x  in doc ("Client.xml")/Clients/Client
where $x/Client.Age > 40 and $x/Client.NoOfPreviousClaims = 0
return
($x/string(Client.Name))