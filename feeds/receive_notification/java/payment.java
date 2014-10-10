import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import mercadopago.MP;

import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

// Extend HttpServlet class
public class ReceiveFeed extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

		JSONObject payment_info = mp.getPaymentInfo(request.getParameter("id"));

		if (Integer.parseInt (payment_info.get("status").toString()) == 200) {
			out.print(payment_info.get("response"));
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}