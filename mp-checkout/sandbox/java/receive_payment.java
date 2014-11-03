import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import mercadopago.MP;

import org.codehaus.jettison.json.JSONObject;

public class ReceiveFeed extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

		mp.sandboxMode(true);

		JSONObject paymentInfo = mp.getPaymentInfo(request.getParameter("id"));

		if (Integer.parseInt(paymentInfo.get("status").toString()) == 200) {
			out.print(paymentInfo.get("response"));
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}