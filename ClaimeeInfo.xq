for $x in doc("Claimee.xml")/Claimee
return
<car>
{$x/Name}
{$x/Address}
{$x/PhoneNumber}
{$x/CarRegNumber}
</car>