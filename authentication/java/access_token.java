import mercadopago.MP;

import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

		String accessToken = mp.getAccessToken();

		System.out.println(accessToken);
	}
}