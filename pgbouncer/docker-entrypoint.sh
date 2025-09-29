#!/bin/sh
set -e

# Создаём userlist.txt динамически
echo "\"$PGUSER\" \"$PGPASSWORD\"" > /etc/pgbouncer/userlist.txt

# Запускаем PgBouncer
exec pgbouncer /etc/pgbouncer/pgbouncer.ini