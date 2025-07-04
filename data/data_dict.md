## Словарь данных

|Объект/Атрибут||Определение|Ограничение|Обязательность|Примечание|
|-|-|-|-|-|-|
|**Консультация**|=|номерКонсультации|||Предназначен для учета данных по консультациям|
||+|датаВремяСоздания||||
||+|датаВремяНачала||||
||+|датаВремяОкончания||||
||+|врач||||
||+|пациент||||
||+|ссылкаДляПодключения||||
||+|ссылкаНаВидеозапись||||
||+|анкетаСимптомов||||
||+|рекомендация||||
||+|слот||||
||+|статусКонсультации||||
||+|естьОтзыв||||
||+|отзыв||||
||+|счетНаОплату||||
||+|сообщение||||
|номерКонсультации|=|*число*|уникальное число, 1-20 символов|+|Уникальный идентификатор консультации в системе|
|датаВремяСоздания|=|*дата*, *время*|формат YYYY-MM-DD HH:MM:SS|+|Дата и время создания Консультации|
|датаВремяНачала|=|*дата*, *время*|формат YYYY-MM-DD HH:MM:SS||Дата и время начала консультации|
|датаВремяОкончания|=|*дата*, *время*|формат YYYY-MM-DD HH:MM:SS||Дата и время окончания консультации|
|врач|=|<*Ссылка на Врача*>||+|Ссылка на Врача, который проводит данную Консультацию|
|пациент|=|<*Ссылка на Пациента*>||+|Ссылка на Пациента, который получает данную Консультацию|
|ссылкаДляПодключения|=|*текст*|1-300 символов|+|Ссылка для подключения к Консультации|
|ссылкаНаВидеозапись|=|<*Ссылка на Видеозапись консультации*>|||Ссылка на видеозапись данной Консультации|
|анкетаСимптомов|=|<*Ссылка на Анкета симптомов*>|||Ссылка на Анкету симптомов данной Консультации|
|рекомендация|=|<*Ссылка на Рекомендация*>|||Ссылка на Рекомендации, сформированные по итогам данной Консультации|
|слот|=|<*Ссылка на Слот*>||+|Ссылка на Слот данной Консультации|
|статусКонсультации|=|<*Активная, Запланирована, Завершена, Отменена…*>|1 значение|+|Текущий статус Консультации|
|естьОтзыв|=|*логический*|false - по умолчанию||Значение показывает наличие Отзыва к данной Консультации|
|отзыв|=|<*Ссылка на Отзыв*>|||Ссылка на Отзыв, созданный Пациентом по данной Консультации|
|счетНаОплату|=|<*Ссылка на Счёт на оплату*>|||Ссылка на Счет на оплату, сформированный по данной Консультации|
|сообщение|=|<*Множественная ссылка на Сообщение*>|||Ссылка на Сообщения, отправленные в рамках Консультации|
|||||||
|**Пациент**|=|номерПациента|||Предназначен для учета данных по пациентам|
||+|датаВремяСоздания||||
||+|пароль||||
||+|фамилия||||
||+|имя||||
||+|отчество||||
||+|пол||||
||+|датаРождения||||
||+|номерДУЛ||||
||+|серияДУЛ||||
||+|СНИЛС||||
||+|электроннаяПочта||||
||+|номерТелефона||||
||+|консультация||||
||+|анкетаАнамнеза||||
||+|результатИсследований||||
||+|сообщение||||
||+|датаВремяДоговорОферты||||
||+|согласиеНаОбработкуПД||||
||+|чек||||
||+|уведомления||||
||+|слот||||
|номерПациента|=|*число*|уникальное число, 1-20 символов|+|Уникальный идентификатор пациента в системе|
|датаВремяСоздания|=|*дата*, *время*|формат YYYY-MM-DD HH:MM:SS|+|Дата и время создания Пациента|
|пароль|=|*текст*|8-20 символов, допустимые символы: a-z, A-Z, 0-9, ~!?@#$%^&*_-+()[]{}></\|"'.,:|+|Пароль для аутентификации Пациента|
|фамилия|=|*текст*|1-300 символов|+|Фамилия пациента|
|имя|=|*текст*|1-300 символов|+|Имя пациента|
|отчество|=|*текст*|1-300 символов||Отчество пациента (при наличии)|
|пол|=|<*Женский, Мужской*>|1 значение|+|Пол пациента|
|датаРождения|=|*дата*|формат ДД.ММ.ГГГГ, не более текущей даты|+|Дата рождения пациента|
|номерДУЛ|=|*текст*|0-50 символов|+|Номер документа, удостоверяющего личность пациента|
|серияДУЛ|=|*текст*|0-50 символов|+|Серия документа, удостоверяющего личность пациента|
|СНИЛС|=|*текст*|11 символов|+|Номер СНИЛС пациента|
|электроннаяПочта|=|*текст*|1-256 символа||Адрес электронной почты пациента|
|номерТелефона|=|*текст*|12 символов||Номер телефона пациента|
|консультация|=|<*Множественная ссылка на Консультация*>|||Ссылка на Консультации данного пациента|
|анкетаАнамнеза|=|<*Cсылка на Анкета анамнеза*>|||Ссылка на Анкету анамнеза пациента|
|результатИсследований|=|<*Множественная ссылка на Результаты исследований*>|||Ссылка на Результаты исследований, загруженные пациентом|
|сообщение|=|<*Множественная ссылка на Сообщение*>|||Ссылка на Сообщения, отправленные пациентом в рамках Консультации|
|датаВремяДоговорОферты|=|*дата*, *время*|формат YYYY-MM-DD HH:MM:SS|+|Дата и время, когда Пациент согласился с Договором Оферты|
|согласиеНаОбработкуПД|=|<*Множественная ссылка на Согласие на обработку ПД*>||+|Ссылка на Согласие на обработку персональных данных, которые дал пациент|
|чек|=|<*Множественная ссылка на Чек*>|||Ссылка на Чеки оплаты/возврата пациента|
|уведомления|=|<*Множественная ссылка на Уведомления*>|||Ссылка на Уведомления, направленные пациенту|
|слот|=|<*Множественная ссылка на Слот*>|||Ссылка на Слоты пациента|
|||||||
|**Слот**|=|номерСлота|||Предназначен для учета данных по слотам|
||+|датаВремяСоздания||||
||+|датаВремяРедактирования||||
||+|дата||||
||+|времяНачала||||
||+|длительность||||
||+|статусСогласования||||
||+|естьКонсультация||||
||+|консультация||||
||+|пациент||||
||+|админКлиники||||
||+|врач||||
||+|заведующий||||
||+|главврач||||
|номерСлота|=|*число*|уникальное число, 1-20 символов|+|Уникальный идентификатор Слота в системе|
|датаВремяСоздания|=|*дата*, *время*|формат YYYY-MM-DD HH:MM:SS|+|Дата и время создания Слота|
|датаВремяРедактирования|=|*дата*, *время*|формат YYYY-MM-DD HH:MM:SS|+|Дата и время редактирования Слота (изменение статусов согласования, наличия консультации)|
|дата|=|*дата*|формат YYYY-MM-DD|+|Дата, на которую назначен Слот|
|времяНачала|=|*время*|формат HH:MM:SS|+|Время начала Слота|
|длительность|=|*время*|формат HH:MM:SS|+|Длительность Слота в минутах|
|статусСогласования|=|<*Не согласован, Отклонён Врачом, Согласован Врачом, Согласован Заведующим, Согласован Главврачом*>|1 значение||Статус согласования данного Слота|
|естьКонсультация|=|*логический*|false - по умолчанию|+|Есть ли консультация с Пациентом в данном Слоте|
|консультация|=|<*Ссылка на Консультацию*>|||Ссылка на Консультацию в данном Слоте|
|пациент|=|<*Ссылка на Пациента*>||+|Ссылка на Пациента, который занял данный Слот|
|админКлиники|=|<*Множественная ссылка на Админа_Клиники*>||+|Множественная ссылка на Админов_Клиники, которые создали/редактировали данный Слот|
|врач|=|<*Ссылка на Врача*>||+|Ссылка на Врача, к которому можно записаться на данный Слот|
|заведующий|=|<*Ссылка на Заведующего*>||+|Ссылка на Заведующего, который согласовывает данный Слот|
|главврач|=|<*Ссылка на Главврача*>||+|Ссылка на Главврача, который согласовывает данный Слот|
|||||||
|**Анкета_Анамнеза**|=|номерАнкеты|||Предназначен для учета данных по анкетам анамнеза|
||+|датаВремяСоздания||||
||+|датаВремяРедактирования||||
||+|статусЗаполненности||||
||+|элементАнкеты||||
||+|пациент||||
||+|шаблон||||
|номерАнкеты|=|*число*|уникальное число, 1-20 символов|+|Уникальный идентификатор Анкеты в системе|
|датаВремяСоздания|=|*дата*, *время*|формат YYYY-MM-DD HH:MM:SS|+|Дата и время создания Анкеты|
|датаВремяРедактирования|=|*дата*, *время*|формат YYYY-MM-DD HH:MM:SS|+|Дата и время редактирования Анкеты|
|статусЗаполненности|=|*логический*|false - по умолчанию||Статус заполненности данной Анкеты:
True - заполнена, False - незаполнена|
|элементАнкеты|=|<*Множественная ссылка на Элемент_Анкеты*>||+|Мнежественная ссылка на Элементы_Анкеты, которые относятся к данной Анкете_Анамнеза|
|пациент|=|<*Ссылка на Пациента*>||+|Ссылка на Пациента, которому приналежит Анкета|
|шаблон|=|<*Ссылка на Шаблон_Анкеты_Анамнеза*>||+|Ссылка на шаблон, по которому формируется Анкета|
|||||||
|**Элемент_Анкеты**|=|номерЭлемента|||Предназначен для учёта элементов анкет анамнеза и симптомов в системе|
||+|вопрос||||
||+|типОтвета||||
||+|ответ||||
||+|анкета||||
||+|шаблонАнкеты||||
||+|типАнкеты||||
|номерЭлемента|=|*число*|уникальное число, 1-20 символов|+|Уникальный идентификатор Элемента_Анкеты в системе|
|вопрос|=|*текст*|1-300 символов|+|Вопрос анкеты|
|типОтвета|=|<*Текст, Число, Уникальный Выбор, Множественный Выбор*>|1 значение|+|Тип поля ответ|
|ответ|=|*текст*|если типОтвета == <Текст>, 1-500 символов|+|Ответ на вопрос анкеты|
|||*число*|целое|||
|||<*уникальныйВыбор1, уникальныйВыбор2...*>|если типОтвета == <Уникальный Выбор>, 1 значение|||
|||<*множественныйВыбор1, множественныйВыбор2...*>|если типОтвета == <Множественный Выбор>, 1 и более значений|||
|анкета|=|<*Ссылка на Анкету*>|||Ссылка на Анкету_Анамнеза или Анкету_Симптомов|
|шаблонАнкеты|=|<*Ссылка на Шаблон_Анкеты*>||+|Ссылка на Шаблон_Анкеты_Анамнеза или Шаблон_Анкеты_Симптомов|
|типАнкеты|=|<*Анкета Анамнеза, Анкета Симптомов*>|1 значение|+|Тип Анкеты, к которой относится данный элемент|

