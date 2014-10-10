import mercadopago

mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")

mp.cancel_payment(":ID")