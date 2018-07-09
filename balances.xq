declare function local:balance($x as xs:string)
as xs:double
{
  let $invoice_doc := doc("Invoice.xml")/Invoices/Invoice[@account_info = $x]
  let $payment_doc := doc("Payment.xml")/Payments/Payment[@account_info = $x]
  return
  sum($invoice_doc/amount) - sum($payment_doc/amount)
};

for $x in doc("Payment.xml")/Payments/Payment/@account_info
return
<balance>
  <account>
    {$x}
  </account>
  <value>
    {local:balance($x)}
  </value>
</balance>