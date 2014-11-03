import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import mercadopago.MP;

import org.codehaus.jettison.json.JSONObject;

public class ReceiveFeed extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

		mp.sandboxMode(false);

		...
	}
}