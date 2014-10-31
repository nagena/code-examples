# coding: UTF-8

import os, sys
import mercadopago

import json

def index(req, **kwargs):
    mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")
    
    filters = {
        "external_reference": "ext1425"
    }

    searchResult = mp.search_payment(filters)

    return json.dumps(searchResult, indent=4)