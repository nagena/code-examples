# coding: UTF-8

import os, sys
import mercadopago

import json

def index(req, **kwargs):
    mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")
    
    paymentInfo = mp.get_payment_info(kwargs["id"])
    
    if paymentInfo["status"] == 200:
        return paymentInfo["response"]
    else:
        return None
