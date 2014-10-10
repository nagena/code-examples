import mercadopago
import json

def index(req, **kwargs):
    mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")

    accessToken = mp.get_access_token()

    return accessToken