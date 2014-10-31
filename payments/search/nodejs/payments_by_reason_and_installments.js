var MP = require ("mercadopago");

var mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

var filters = {
	"payment_type": "credit_card",
	"operation_type": "regular_payment",
	"installments": 12,
	"reason": "Your-item-title"
};

mp.searchPayment (filters, function (err, data){
	if (err) {
		console.log (err);
	} else {
		console.log (JSON.stringify (data, null, 4));
	}
});