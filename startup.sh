#!/bin/bash

set -e

if [ -f /etc/configured ]; then
  echo 'already configured'
else
  #code that need to run only one time ....
  /usr/bin/mysqld_safe &
  sleep 5s
  mysqladmin -u root password ${MYSQL_PASSWD}
  killall mysqld
  sleep 5s
  #needed for fix problem with ubuntu and cron
  update-locale
  date > /etc/configured
fi
