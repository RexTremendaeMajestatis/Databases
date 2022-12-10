# Требуемое ПО
* Docker
* Docker-compose
* Клиент СУБД (например DataGrip)

# Порядок подготовки сервера Redis в ОС Ubuntu 22.10
1. Скачать директорию `Redis`
2. Выполнить `chmod 777 -R ./data`
4. Выполнить `docker-compose -f docker-compose.yml up -d`
5. С помощью `docker logs redis` убедиться, что сервер проинициализировался без ошибок

## Дополнительная информация
* Сервер СУБД доступен на порту 6379
* Docker-compose создает файлы СУБД во внешнем томе (директория `./data`)
* По умолчанию не требуется ни пользователя, ни пароля
* При использовании Unix стоит работать **ТОЛЬКО** в нативной файловой системе (ext4)

# Подключение DataGrip к СУБД
- Connection type: default
- Authentication: User & Password
- User: оставить пустым
- Password: оставить пустым
- URL: `jdbc:redis://localhost:6379/0`
