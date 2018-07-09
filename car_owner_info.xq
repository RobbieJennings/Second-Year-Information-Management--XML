for $x in doc("Car.xml")/Car_Info/Car
return
<car>
{$x/Owner}
{$x/Make}
{$x/Model}
{$x/Reg}
</car>