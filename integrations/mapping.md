## Маппинг данных из Битрикс24

### Пример ответа от Битрикс24 на запрос всех слотов GetDoctorScheduleSlots:

```
{
  "result": [
    {
      "slotId": 1,
      "doctorId": 123,
      "date": "2024-03-20",
      "timeStart": "10:00",
      "timeEnd": "10:30",
      "status": "free",
      "patientId": null,
      "appointmentId": null
    },
    {
      "slotId": 2,
      "doctorId": 123,
      "date": "2024-03-20",
      "timeStart": "10:30",
      "timeEnd": "11:00",
      "status": "busy",
      "patientId": 456,
      "appointmentId": 789
    }
  ],
  "error": null
}
```

### Маппинг данных

|Система источник (Битрикс24)|||Система приемник (Микросервис управления слотами)||||
|-|-|-|-|-|-|-|
|Объект/атрибут||Тип, Значение|Объект/атрибут||Тип, Значение|Комментарий|
|Result|Result|Объект |Слот|Slots|Объект ||
|id|slotId|число|id|Slots.id|число||
|Доктор|doctorId|число|Доктор|doctor.id|число||
|Дата слота|date|дата|Дата|Slots.date|дата||
|Время начала|timeStart|время|Время начала|Slots.time_start|время||
|Время окончания|timeEnd|время|Длительность(=Время окончания)|Slots.time_duration|время |Пишем время окончания слота|
|Статус|status|free, busy, reserved|Статус|Slots.status_id|Ссылка на статус слота (StatusSlot)|free=1 ('Свободен')
busy=2 ('Занят')|
||||ДатаВремяСоздания|date_of_create|дата|дата создания записи|
||||ДатаВремяРедактирования|date_edit|дата|дата измения (статуса)|


