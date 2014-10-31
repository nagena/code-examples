var MP = require ("mercadopago");

var mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

var filters = {
	"status": "approved",
	"operation_type": "regular_payment",
	"range": "date_created",
	"begin_date": "NOW-1MONTH",
	"end_date": "NOW"
};

mp.searchPayment (filters, function (err, data){
	if (err) {
		console.log (err);
	} else {
		console.log (JSON.stringify (data, null, 4));
	}
});