import mercadopago.MP;
import org.codehaus.jettison.json.JSONObject;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");

		JSONObject payment = mp.post("/v1/payments", "{"+
			"'transaction_amount': 100,"+
			"'reason': 'Title of what you are paying for',"+
			"'installments': 1,"+
			"'payment_method_id': 'visa',"+
			"'card': ':CARD',"+
			"'payer': {"+
				"'email': 'payer@email.com'"+
			"},"+
			"'external_reference': '1234'"+
		"}");
	}
}
