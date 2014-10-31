var MP = require ("mercadopago");

var mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

var filters = {
	"status": "approved",
	"offset": 0,
	"limit": 10
};

mp.searchPayment (filters, function (err, data){
	if (err) {
		console.log (err);
	} else {
		console.log (JSON.stringify (data, null, 4));
	}
});