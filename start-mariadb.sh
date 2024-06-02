#!/bin/bash
service mariadb start

# Wait for MariaDB to start
while ! mysqladmin ping -s; do
    sleep 1
done

mysql -u example-user -p password < /docker-entrypoint-initdb.d/setup.sql
bash