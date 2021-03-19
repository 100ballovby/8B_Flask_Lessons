'''
Словарь - структуру данных, которая хранит
внутри пары ключ:значение. Похожа на толковый словарь

название = {
    'key1':'value1',
    'key2':'value2',
    ...
    'keyN':'valueN'
}
'''

countries = {
    'ru': 'Russia Federation',
    'by': 'Republic of Belarus',
    'uk': 'United Kingdom of Great Britain',
    'us': 'United States of America',
    'me': 'Montenegro',
}

'''Чтобы достать значение из словаря, нужно написать
название словаря и ключ, по которому хотим обращаться'''
print(countries['uk'])
# print(countries['Russia Federation']) <- не работает, нет ключа 'Russia Federation'

'''Вывеси все ключи из словаря - метод .keys()'''
print('Ключи: ')
for key in countries.keys():
    print(key)
print()

'''Вывести все значения из словаря - метод .values()'''
print('Значения: ')
for value in countries.values():
    print(value)
print()

'''Вывести ВСЕ из слова (ключи + значения) - метод .items()'''
print('Все: ')
for key, value in countries.items():
    print(f'Key: {key}; Value: {value}')
print()
