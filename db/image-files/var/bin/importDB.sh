#!/usr/bin/env bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
BASEDIR=$(dirname "$SCRIPT_DIR")

DATABASE_NAME=
FILE_BACKUP_PATH=/var/dump/lastest.sql

echo "Drop Tabel $DATABASE_NAME"
mysql -uroot --password=$MYSQL_ROOT_PASSWORD -e "DROP DATABASE IF EXISTS $DATABASE_NAME"

echo "Create Tabel $DATABASE_NAME"
mysql -uroot --password=$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME CHARACTER SET UTF8 COLLATE utf8_general_ci"

echo "Import DB $DATABASE_NAME"
mysql --port="3306" -u root -p${MYSQL_ROOT_PASSWORD} $DATABASE_NAME < $FILE_BACKUP_PATH