# Требуемое ПО
* Docker
* Docker-compose
* Клиент СУБД (например DataGrip)

# Порядок подготовки сервера СУБД Oracle XE в ОС Ubuntu 22.10
1. Скачать директорию `ORACLE XE`
2. Выполнить `chmod 777 -R ./data`
3. В файле `./oracle-db.env` указать пароль
4. Выполнить `docker-compose -f docker-compose.yml up -d`
5. С помощью `docker logs oracle_db` убедиться, что сервер проинициализировался без ошибок

## Дополнительная информация
* Контейнер с сервером СУБД называется oracle_db
* Сервер СУБД доступен на порту 1521
* Docker-compose создает файлы СУБД во внешнем томе (директория `./data`)
* При инициализации сервера создается пользователь `SYSTEM` и базы данных `XE` и `XEPDB1`
* Пароль от пользователя `SYSTEM` указан в `./oracle-db.env` (`12345678`)
* При использовании Unix стоит работать **ТОЛЬКО** в нативной файловой системе (ext4)

# Подключение DataGrip к СУБД
- Connection type: URL only
- Authentication: User & Password
- User: SYSTEM
- Password: см. `./oracle-db.env`
- URL: `jdbc:oracle:thin:@tcp://localhost:1521/XEPDB1?oracle.net.disableOob=true`
