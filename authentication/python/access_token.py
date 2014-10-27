import mercadopago

mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")

accessToken = mp.get_access_token()

print accessToken