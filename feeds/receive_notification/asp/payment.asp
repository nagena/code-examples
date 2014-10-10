<%
	Dim payment_info
	
	Dim mp
	Set mp = new Mercadopago
	
	mp.construct "CLIENT_ID", "CLIENT_SECRET"
	
	payment_info = mp.get_payment_info(Request.Querystring("id"))
	
	Response.write( payment_info )
%>