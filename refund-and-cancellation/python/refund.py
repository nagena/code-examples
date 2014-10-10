import mercadopago

mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")

mp.refund_payment(":ID")