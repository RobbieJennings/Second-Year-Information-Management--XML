declare function local:payments_made($x as xs:string)
as xs:string
{
  for $y in doc("Payment.xml")/Payments/Payment[@invoice_reference = $x]
  return
  string ($y/@reference)
};

for $x in doc("Invoice.xml")/Invoices/Invoice/string(@reference)
return
<Invoices>
  <Invoice>
    {$x}
  </Invoice>
  <Payments>
    {local:payments_made($x)}
  </Payments>
</Invoices>