<!--#include file="lib\mercadopago.asp"-->

<%
	Dim mp
	
	Set mp = new Mercadopago
	
	mp.construct "CLIENT_ID", "CLIENT_SECRET"

	mp.refund_payment(":ID")
%>