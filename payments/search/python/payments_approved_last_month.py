# coding: UTF-8

import os, sys
import mercadopago

import json

def index(req, **kwargs):
    mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")
    
    filters = {
        "status": "approved",
        "operation_type": "regular_payment",
        "range": "date_created",
        "begin_date": "NOW-1MONTH",
        "end_date": "NOW"
    }

    searchResult = mp.search_payment(filters)

    return json.dumps(searchResult, indent=4)