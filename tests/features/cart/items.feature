# language: ru

@issue=1
Функция: Управление количеством наименований
  Я как пользователь хочу иметь возможность добавлять, уменьшать и убирать наименования,
  видеть количество наименований в корзине и количество единиц для каждого добавленного наименования.

  Сценарий: Добавление четырех наименований
    Если пользователь нажмет на кнопку "плюс" для 1-го наименования
    Затем пользователь нажмет на кнопку "плюс" для 2-го наименования
    Затем пользователь нажмет на кнопку "плюс" для 3-го наименования
    Затем пользователь нажмет на кнопку "плюс" для 4-го наименования
    Тогда количество наименований в корзине равно 4

  Сценарий: Добавление нескольких единиц одного наименования
    Если пользователь нажмет на кнопку "плюс" для 1-го наименования
    Затем пользователь нажмет на кнопку "плюс" для 1-го наименования
    Тогда количество единиц 1-го наименования равно 2
    Но количество наименований в корзине равно 1

  Сценарий: Уменьшение количества одного наименования до нуля
    Если пользователь нажмет на кнопку "плюс" для 1-го наименования
    Затем пользователь нажмет на кнопку "минус" для 1-го наименования
    Тогда количество единиц 1-го наименования равно 0
    И количество наименований в корзине равно 0

  Сценарий: Уменьшение количества одного наименования до единицы
    Если пользователь нажмет на кнопку "плюс" для 1-го наименования
    Затем пользователь нажмет на кнопку "плюс" для 1-го наименования
    Затем пользователь нажмет на кнопку "минус" для 1-го наименования
    Тогда количество единиц 1-го наименования равно 1
    И количество наименований в корзине равно 1

  Сценарий: Удаление наименования
    Затем пользователь нажмет на кнопку "плюс" для 1-го наименования
    Если пользователь нажмет на кнопку "удалить" для 1-го наименования
    И количество наименований в корзине равно 0