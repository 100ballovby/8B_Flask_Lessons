""" routes - маршрутизация """
from flask import render_template
# render_template - рисует html-страницы
from app import app
# из файла app.py импортировать переменную app
from app import db
from models import Currencies


@app.route('/')  # задать ссылку на главную страницу сайта
def main_page():  # функция отображения страницы
    cur_list = Currencies.query.order_by(Currencies.currency_code).all()  # выгружаю все из таблицы currencies
    return render_template('index.html',
                           title='Главная страница',
                           curr=cur_list)  # что будет отображаться

