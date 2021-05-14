from app import db


class Currencies(db.Model):
    '''Таблица для хранения валют'''
    id = db.Column(db.Integer, primary_key=True)
    currency_code = db.Column(db.String(10))
    currency = db.Column(db.String(120))
