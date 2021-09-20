#!/usr/bin/env bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
BASEDIR=$(dirname "$SCRIPT_DIR")

DATE_TIME=$(date +'%Y_%m_%d_%H%M')
OUTPUT_FILE_NAME='backup_'$DB_DATABASE_NAME'_'$DATE_TIME'.sql'

echo $OUTPUT_FILE_NAME
echo "Application Path: " $BASEDIR

mysqldump -uroot --password=$MYSQL_ROOT_PASSWORD $DB_DATABASE_NAME > /root/$OUTPUT_FILE_NAME
