# Требуемое ПО
* Docker
* Docker-compose
* Клиент СУБД (например DataGrip)

# Порядок подготовки сервера Cassandra в ОС Ubuntu 22.10
1. Скачать директорию `Cassandra`
2. Выполнить `chmod 777 -R ./data`
4. Выполнить `docker-compose -f docker-compose.yml up -d`
5. С помощью `docker logs cassandra` убедиться, что сервер проинициализировался без ошибок

## Дополнительная информация
* Сервер СУБД доступен на порту 9042
* Docker-compose создает файлы СУБД во внешнем томе (директория `./data`)
* При инициализации сервера создается пользователь `cassandra` c паролем `cassandra`
* При использовании Unix стоит работать **ТОЛЬКО** в нативной файловой системе (ext4)

# Подключение DataGrip к СУБД
- Connection type: default
- Authentication: User & Password
- User: `cassandra`
- Password: `cassandra`
- URL: `jdbc:cassandra://localhost:9042`
