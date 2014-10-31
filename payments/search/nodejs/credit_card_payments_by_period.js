var MP = require ("mercadopago");

var mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

var filters = {
	"payment_type": "credit_card",
	"operation_type": "regular_payment",
	"range": "date_created",
	"begin_date": "2014-10-21T00:00:00Z",
	"end_date": "2014-10-25T24:00:00Z"
};

mp.searchPayment (filters, function (err, data){
	if (err) {
		console.log (err);
	} else {
		console.log (JSON.stringify (data, null, 4));
	}
});