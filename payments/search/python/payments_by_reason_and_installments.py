# coding: UTF-8

import os, sys
import mercadopago

import json

def index(req, **kwargs):
    mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")
    
    filters = {
        "payment_type": "credit_card",
        "operation_type": "regular_payment",
        "installments": 12,
        "reason": "Your-item-title"
    }

    searchResult = mp.search_payment(filters)

    return json.dumps(searchResult, indent=4)