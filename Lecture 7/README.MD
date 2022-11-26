# Окружение

- Ubuntu 22.10
- Docker
- DataGrip

# Проблемы
Не могу подключиться из DataGrip к локальному серверу в докере

Поправил вот так:
- Connection type: URL only
- Authentication: User & Password
- User: SYSTEM
- Password: ${ORACLE_PWD} <- ПАРОЛЬ ИЗ `./oracle-db.env`
- URL: `jdbc:oracle:thin:@tcp://localhost:1521/XEPDB1?oracle.net.disableOob=true`

# Запуск

0. Выполнить команду `chmod 777 -R ./data`
1. В `./oracle-db.env` указать пароль (`ORACLE_PWD`)
2. Выполнить команду `docker-compose -f docker-compose.yml up -d`
3. Подключить DataGrip к БД (База: `XEPDB1`, пользователь: `SYSTEM, пароль: см `./oracle-db.env`, хост: localhost, порт: 1521)