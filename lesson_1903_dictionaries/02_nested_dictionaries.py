countries = {
    'ru': {
        'name': 'Russia Federation',
        'capital': 'Moscow',
        'population': [100000000, 50000000]
    },
    'by': {
        'name': 'Republic of Belarus',
        'capital': 'Minsk',
        'population': [6000000, 4000000]},
    'uk': {
        'name': 'United Kingdom of Great Britain',
        'capital': 'London',
        'population': [5000000, 5000000]},
    'us': {
        'name': 'United States of America',
        'capital': 'Washington',
        'population': [80000000, 70000000]},
    'me': {
        'name': 'Montenegro',
        'capital': 'Podgorica',
        'population': [2000000, 3000000]},
}

# узнать столицу страны с кодом UK
print(countries['uk']['capital'])
# узнать количество мужского населения страны с кодом US
print(countries['us']['population'][1])
