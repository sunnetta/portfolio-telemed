|Система -источник|Система - приемник|Передаваемые данные |Полный обьем/изменения|Периодичность обмена/событие|
|-|-|-|-|-|
|Сервис взаимодействия с ЕСИА|Сервис управления сессиями пользователей|Данные о пользовательской сессии|Полный|Событие "Войти через ЕСИА"|
|Сервис взаимодействия с ЕСИА|Сервис регистрации и авторизации |Данные пользователя (для авторизации)|Полный|Событие "Регистрация пациента"|
|Сервис регистрации и авторизации|Сервис управления сессиями пользователей|Данные о пользовательской сессии|Полный|Событие "Вход в систему"|
|Сервис управления пользователями|Сервис регистрации и авторизации|Данные пользователя (для авторизации)|Полный|Событие "Авторизация"|
|Сервис управления пользователями|Сервис управления консультациями|Данные пользователя|Полный|Событие "Создание консультации"|
|Сервис управления пользователями|Сервис управления слотами|Данные о пользователях|Полный|Событие "Просмотр расписания", "Бронирование слота"|
|Сервис управления пользователями|Сервис работы с документами|Данные о пользователе|Полный|События "Регистрация пациента", "Создание консультации", "Формирование отчёта" |
|Сервис управления консультациями|Сервис управления слотами|Данные консультации|Полный|События "Создание консультации", "Отмена консультации"|
|Сервис управления консультациями|Сервис оплаты|Данные для оплаты/возврата|Полный|События "Оплата", "Возврат"|
|Сервис управления консультациями|Сервис работы с отзывами|Данные о консультации|Полный|События "Конец видеоконсультации"|
|Сервис управления консультациями|Сервис уведомлений|Событие для уведомлений|Полный|События. Полный список событий указан в Пользовательских требованиях|
|Сервис управления консультациями|Сервис работы с документами|Данные консультации|Полный|События "Создание консультации", "Создание рекомендации", "Формирование отчёта" |
|Сервис управления слотами|Сервис управления консультациями|Данные о бронировании слота|Полный|Событие "Бронирование слота"|
|Сервис видеоконсультаций|Сервис управления консультациями|Данные о видеоконсультации, ссылка на видеозапись консультации|Полный|События "Создание консультации", "Начало видеоконсультации", "Конец видеоконсультации"|
|Сервис работы с документами|Сервис управления консультациями|Анкеты, рекомендации, результаты мед.исследований|Полный|Событие "Просмотр документа"|
|Сервис работы с документами|Сервис уведомлений|События для уведомления|Полный|События. Полный список событий указан в Пользовательских требованиях|
|Сервис работы с отзывами|Сервис управления консультациями|Отзыв|Полный|Событие "Просмотр карточки консультации"|
|Сервис работы с отзывами|Сервис управления пользователями|Рейтинг врача|Полный|1 раз в день|
|Битрикс24|Сервис управления слотами|Слоты|Полный|Событие "Просмотр расписания", "Получение расписания"|
|Битрикс24|Сервис управления слотами|Слоты|Изменения|Изменение статусов слотов в Битрикс|
|Сервис управления слотами|Битрикс24|Слоты|Изменения|Событие "Бронирование слота", "Отмена консультации"|
