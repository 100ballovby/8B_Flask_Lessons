from flask import Flask  # импорт библиотеки

app = Flask(__name__, instance_relative_config=False)
# создаем переменную сайта, отключаем автоматический сбор конфигурации
app.config.from_object('config.Config')  # указываем, где брать настройки сайта

from routes import *

if __name__ == '__main__':  # инструкция запуска сайта
    app.run(debug=True)
