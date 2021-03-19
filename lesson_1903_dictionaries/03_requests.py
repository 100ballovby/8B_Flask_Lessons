import requests
import json

url = 'https://api.github.com/'  # сохраняю адрес API GitHub
response = requests.get(url)  # проверяю подключение к url-адресу API GitHub

