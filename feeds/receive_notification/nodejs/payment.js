var 	http = require("http"),
	url = require("url"),
	MP = require("mercadopago");

http.createServer(function (req, res) {
	res.writeHead(200);
	res.end(index);

	var params = url.parse(req.url, true).query;
	
	var mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

	mp.getPayment (params.id, function (err, data){
		if (err) {
			console.log (err);
		} else {
			console.log (data);
		}
	});
}).listen(8080);