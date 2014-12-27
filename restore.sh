#!/bin/bash
#this for reference only to create the restore scrips for each container ... the idea to use the same command for each container
#each container will have their own custum restore scritp for it ... 

#restore mysql
if [ -f /var/backups/alldb_backup.sql ]; then
  mysqlimport -u root -p${MYSQL_PASSWD} --all-databases /var/backups/alldb_backup.sql
   echo "database restore: from date " ; cat /var/backups/backupdate
else
  echo "database don't have backup"
fi
