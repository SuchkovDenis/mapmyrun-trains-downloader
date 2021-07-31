# Скрипты для выгрузки тренировок из mapmyrun.com

## Использование
Для использования скриптов необходимо авторизоваться на сайте mapmyrun.com и сделать загрузку одной тренировки, посмотрев с какими куками уходит запрос (в Request Headers). Эти куки используем в скриптах `get_train_list.sh` и `download_trains.sh`

В проекте два скрипта:

`get_train_list.sh` сохраняет в файл `allWorkouts.txt` список id всех тренировок:
```bash
./get_train_list.sh -c "cookie: <cookies с сайта>"
```

`download_trains.sh` скачивает тренировки в формате `.tcx` в папку `out`:
```bash
./download_trains.sh -c "cookie: <cookies с сайта>" -f allWorkouts.txt
```
