var MP = require ("mercadopago");

var mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

mp.getAccessToken(function (err, accessToken){
	console.log (accessToken);
});