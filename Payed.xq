for $b in doc("NamedDriver.xml")/NamedDrivers/NamedDriver
where $b/NamedDriver.Payed ="true"
order by $b/@Name
return <NamedDriver>
{$b/@Name}
{$b/NamedDriver.DOB}
{$b/NamedDriver.Gender}
</NamedDriver>