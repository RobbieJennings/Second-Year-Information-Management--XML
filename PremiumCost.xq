for $b in doc("Policy.xml")/Policies/Policy
where $b/Policy.Premium >200
order by $b/@PolicyID
return <Policy>
{$b/@PolicyID}
{$b/Policy.Driver}
{$b/Policy.Description}
</Policy>