countries = {
    'ru': 'Russia Federation',
    'by': 'Republic of Belarus',
    'uk': 'United Kingdom of Great Britain',
    'us': 'United States of America',
    'me': 'Montenegro',
}

'''Добавить новую пару ключ-значение в словарь.
Для этого я пишу стандартное обращение, только в
квадратных скобках указываю название нового ключа 
и через = новое значение
'''
countries['no'] = 'Norway'  # я добавляю ключ 'no' со значением 'Norway'
print(countries)

'''Чтобы заменить значение в словаре, обращаюсь
к существующему ключу и через = пишу ему новое значение.

Переименовать ключ нельзя
'''
countries['ru'] = 'Ukraine'  # изменяю значение 'ru' на 'Ukraine'
print(countries)

'''Чтобы удалить элемент из словаря, обращаюсь
к существующему ключу методом del'''
del countries['me']  # удаляю пару с ключом 'me'
print(countries)
