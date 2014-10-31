# coding: UTF-8

import os, sys
import mercadopago

import json

def index(req, **kwargs):
    mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")
    
    filters = {
        "status": "approved",
        "offset": 0,
        "limit": 10
    }

    searchResult = mp.search_payment(filters)

    return json.dumps(searchResult, indent=4)