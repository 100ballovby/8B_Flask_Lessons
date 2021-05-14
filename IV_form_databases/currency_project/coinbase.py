import requests
import json

url = 'https://api.coinbase.com/v2/currencies'
response = requests.get(url)
cur = json.loads(response.text)

print(cur)
