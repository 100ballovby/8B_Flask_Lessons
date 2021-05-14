import requests
import json
from app import db
from models import Currencies

url = 'https://api.coinbase.com/v2/currencies'
response = requests.get(url)
cur = json.loads(response.text)

for i in cur['data']:
    c = Currencies()  # создаю экземпляр валюты
    c.currency_code = i['id']  # записываю код валюты
    c.currency = i['name']  # записываю название валюты
    db.session.add(c)  # добавляю новую валюту в бд
    db.session.commit()  # сохраняю изменения в базе
