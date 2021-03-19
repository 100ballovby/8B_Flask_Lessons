""" routes - маршрутизация """
from flask import render_template
# render_template - рисует html-страницы
from app import app
# из файла app.py импортировать переменную app


@app.route('/')  # задать ссылку на главную страницу сайта
def main_page():  # функция отображения страницы
    return render_template('index.html', title='Главная страница')  # что будет отображаться
    """когда пользователь зайдет на главную страницу,
    он увидит шаблон index.html"""


@app.route('/about')
def about_page():
    return render_template('about.html', title='О нас')
    # на странице about будет отображаться другой шаблон - about.html


@app.route('/login/', methods=['GET', 'POST'])
def login_page():
    return render_template('login.html', message='Успешно!', title='Login page')