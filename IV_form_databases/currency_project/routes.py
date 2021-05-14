""" routes - маршрутизация """
from flask import render_template
# render_template - рисует html-страницы
from app import app
# из файла app.py импортировать переменную app


@app.route('/')  # задать ссылку на главную страницу сайта
def main_page():  # функция отображения страницы
    return render_template('index.html', title='Главная страница')  # что будет отображаться

