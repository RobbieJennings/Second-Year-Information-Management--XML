for $x in doc("Invoice.xml")/Invoices/Invoice
return
<address>
{$x/recipient}
{$x/recipient_address}
</address>