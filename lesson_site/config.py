import os

# указываем корневую папку проекта
basedir = os.path.abspath(os.path.dirname(__file__))
# basedir = взять_абсолютный_путь(директория(главный_файл_сайта))


class Config:
    SECRET_KEY = 'try-to-guess'
    FLASK_APP = 'app.py'
